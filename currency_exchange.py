import requests
import pandas as pd
from bs4 import BeautifulSoup
from datetime import datetime
import sqlite3

def get_exchange_rates_to_gbp():
    url = "https://www.x-rates.com/table/?from=GBP&amount=1"
    response = requests.get(url)
    soup = BeautifulSoup(response.text, features="lxml")

    data = []
    table = soup.find("table", class_="tablesorter ratesTable")
    rows = table.find_all("tr")[1:]  # Skip header row
    timestamp = datetime.now().isoformat()

    for row in rows:
        cols = row.find_all("td")
        if len(cols) >= 2:
            currency_name = cols[0].text.strip()
            rate_to_gbp = float(cols[1].text.strip())
            data.append({
                'currency': currency_name,
                'rate_to_gdp': rate_to_gbp,
                'timestamp': timestamp
            })

    df = pd.DataFrame(data)
    df['timestamp'] = pd.to_datetime(df['timestamp']).dt.round('min')

    conn = sqlite3.connect("finance.db")
    df.to_sql('currency_exchange', conn, if_exists='append', index=False)
    conn.close()
    return

if __name__ == "__main__":
    print("Getting latest exchange rates...")
    get_exchange_rates_to_gbp()  # Run once immediately