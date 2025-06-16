# L5-DE-Data-Pipelines-T2

This project expands on the original UK-only data pipeline by introducing support for user data from the French version of the application. The goal is to implement a scalable and flexible system that can ingest and process user data from multiple countries with varying formats.

## 🚀 Project Overview

Your objective is to develop a Python-based pipeline that:
   - Cleand, validated, and integrated French user data alongside UK data.
   - Maintaind country-specific formatting where appropriate.
   - Buildd a unified pipeline to handle transformations and inserts.
   - Prepared the system for future country data integrations.

**Note: Collaborate with Your Instructor**  
 Your instructor will act as the stakeholder and Subject Matter Expert (SME). They will provide clarification on:
   - Schema requirements
   - Business rules for validation
   - Future data sources

---

## 🧱 Updated Database Schema

To support data from multiple countries, update your database schema to include a 'country_code' column in both the 'users' and 'logins' tables.

The 'users' table should now supports French column mappings and additional validation rules for new formats.

---

## 🔄 Data Pipeline Enhancements
The pipeline should been updated to process both UK and FR datasets:
- Translate French column names to match the English schema.
- Clean and normalise data fields (e.g., DoB formats, salary parsing, gender codes).
- Add the appropriate 'country_code' (e.g., 'UK' or 'FR') for each user and login entry.
- Merge data into a shared 'users' and 'logins' table with consistent structure.

---

## 📦 Repository Structure

```plaintext
├── .devcontainer/           # Codespaces config
│   ├── devcontainer.json
│   └── Dockerfile
├── data/                    # Sample data files
│   ├── UK User Data.csv
│   └── UK-User-LoginTS.csv
├── .gitignore               # Hiding files that will not be committed
├── connect.py               # Example Python script to query a database
├── init_db.sql              # Example SQL script for schema creation in SQLite
├── README.md                # Project instructions (this file)
└── requirements.txt         # Python package requirements
```

You also have `create_database.sql`, `explorer.ipynb` and `explorer.py` files. These are model answers to the project requirements, demonstrating how to create a database and explore it using Python and Jupyter Notebook.

---

## 🌍 Future Phases
To support global expansion, future tasks may include:
- Handling non-Western characters and encodings.
- Mapping RQF equivalents from other national education systems.
- Adapting for date formats, address structures, and phone formats.
- Integrating location-based validation (e.g., postcode-region matches).

---

## 🧠 Remember

This setup uses **SQLite** for simplicity and local prototyping, but the same schema and logic should be portable to PostgreSQL or another RDBMS in a production environment. Keep modularity and maintainability in mind.

Happy coding!