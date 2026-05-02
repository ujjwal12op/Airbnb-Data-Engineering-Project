#  Airbnb Data Engineering Pipeline

An end-to-end Data Engineering project built using AWS S3, Snowflake, and dbt to process and transform Airbnb data into analytics-ready datasets using Medallion Architecture.

---

##  Project Overview

This project demonstrates a modern ELT pipeline where raw Airbnb data is ingested from AWS S3, processed in Snowflake, and transformed using dbt into structured and optimized data models for analytics.

---

##  Architecture

S3 (Raw Data) → Snowflake (Bronze Layer) → dbt Transformations → Silver Layer → Gold Layer → Star Schema / OBT

---

##  Tech Stack

- **AWS S3** – Data storage (Data Lake)
- **Snowflake** – Cloud Data Warehouse
- **dbt (Data Build Tool)** – Data transformation
- **SQL** – Querying and transformations
- **GitHub** – Version control

---

##  Data Pipeline Flow

1. **Data Ingestion**
   - Raw CSV files are stored in AWS S3
   - Data is loaded into Snowflake using external stages and `COPY INTO`

2. **Bronze Layer**
   - Raw data stored without transformations

3. **Silver Layer**
   - Data cleaning (handling nulls, duplicates, formatting)

4. **Gold Layer**
   - Business logic applied and aggregated data prepared

5. **Data Modeling**
   - Created One Big Table (OBT)
   - Designed Star Schema (Fact & Dimension tables)

---

##  Security

- Implemented secure connection between S3 and Snowflake using:
  - IAM Roles
  - Snowflake Storage Integration

---

##  Features

- End-to-end ELT pipeline
- Medallion Architecture implementation
- Modular SQL transformations using dbt
- Data quality checks and testing in dbt
- Scalable and maintainable data pipeline

---

##  Use Cases

- Data analytics and reporting
- Business insights generation
- Dashboard integration (Power BI / Tableau)

---

##  How to Run

1. Upload dataset to AWS S3
2. Create Snowflake database, schema, and stage
3. Configure storage integration with IAM role
4. Run `COPY INTO` to load data
5. Execute dbt models:

```bash
dbt run
dbt test
