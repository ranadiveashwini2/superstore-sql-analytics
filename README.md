# 📘 Superstore SQL Analytics Project
*A complete SQL portfolio project using PostgreSQL — includes RAW → CLEAN → ANALYTICS pipeline, business queries, and insights.*

---

## 📌 Project Overview

This is an end-to-end SQL data analytics project built using the **Superstore dataset**.  
It demonstrates how to:

- Import raw CSV data safely  
- Clean and transform it  
- Create typed tables for analysis  
- Run real business-focused queries  
- Generate insights useful for decision-making  

It is designed as a **beginner-friendly** but **professional** project for a junior data analyst portfolio.

---

## 🗂️ Project Structure

```text
superstore-sql-analytics/
│
├── README.md
│
├── sql/
│   ├── 01_create_superstore_raw.sql
│   ├── 02_create_superstore_clean.sql
│   ├── 03_create_superstore_analytics.sql
│   └── 04_example_queries.sql
│
├── docs/
│   └── Superstore_SQL_Portfolio.pdf
│
└── data/
    └── Superstore_cleaned.csv  (optional)
```

---

## 🔄 Data Pipeline (RAW → CLEAN → ANALYTICS)

### 1️⃣ RAW Layer – `superstore_raw`
- Stores the CSV exactly as imported  
- All fields as **TEXT** to avoid errors  
- Safe import for messy CSVs  

### 2️⃣ CLEAN Layer – `superstore_clean`
- Converts RAW text to correct data types  
- Parses dates (`order_date`, `ship_date`)  
- Converts sales, profit, discount to NUMERIC  
- Adds a proper internal primary key  
- Ready for analysis and reporting  

### 3️⃣ ANALYTICS Layer
Contains summary tables that answer business questions, for example:

#### `superstore_analytics_region`
Sales & profit by region  

#### `superstore_analytics_category`
Category + discount band performance  

This layer shows the ability to create structured, reusable data assets like a real analyst or BI developer.

---

## 📊 Business Questions Answered

- Which regions generate the highest sales and profit?  
- Which product categories are most profitable?  
- Which discount levels reduce profit?  
- Who are the most valuable customers?  
- Which products create losses despite high sales?  

---

## 🧠 Key SQL Skills Demonstrated

- Creating database tables (RAW, CLEAN, ANALYTICS)  
- Data type conversion: `TEXT → DATE`, `TEXT → NUMERIC`  
- Aggregations: `SUM`, `AVG`, `COUNT`  
- Grouping and ordering (`GROUP BY`, `ORDER BY`)  
- Conditional logic with `CASE`  
- Data cleaning and pipeline creation  
- Real business analytics queries  
- Creating summary tables for BI reporting  

---

## 📄 SQL Files Overview

### `01_create_superstore_raw.sql`
- Defines the RAW table  
- All columns TEXT  
- Used for safe CSV import  

### `02_create_superstore_clean.sql`
- Converts RAW table into typed CLEAN table  
- Adds DATE, NUMERIC, INT conversions  
- Adds primary key  

### `03_create_superstore_analytics.sql`
- Creates regional and category analytics tables  
- Used for business performance analysis  

### `04_example_queries.sql`
- Real-world data analysis queries  
- Top customers, top products, discount impact, etc.  

---

## 📑 Portfolio PDF

A portfolio-style PDF summarizing the project:  
- Objectives  
- Pipeline  
- Insights  
- Techniques used  

File: `docs/Superstore_SQL_Portfolio.pdf`  

You can attach this PDF to job applications.

---

## 🧩 How to Run This Project

1. **Create the RAW table**

   Run:
   ```sql
   sql/01_create_superstore_raw.sql
   ```

2. **Import the cleaned CSV**

   Use pgAdmin → Import/Export → Import  
   File: `data/Superstore_cleaned.csv`

3. **Create the CLEAN table**

   Run:
   ```sql
   sql/02_create_superstore_clean.sql
   ```

4. **Create analytics tables**

   Run:
   ```sql
   sql/03_create_superstore_analytics.sql
   ```

5. **Explore with example queries**

   Run:
   ```sql
   sql/04_example_queries.sql
   ```

---

## 🎯 Why This Project Matters

This project demonstrates the real work of a **data analyst**:

- Cleaning data  
- Understanding structure  
- Transforming tables  
- Performing SQL analysis  
- Deriving business insights  
- Presenting results  

Perfect for:

- Job applications  
- SQL portfolio  
- LinkedIn profile  
- Career transition into analytics  

---

## 👩‍💼 About the Author

This project is created as part of my learning journey into **Data Analysis**.  
I am upskilling in:

- SQL  
- Analytics  
- Python  
- Power BI  
- Data storytelling  

and I am passionate about building real-world projects.

---

## 📬 Contact

**LinkedIn:** www.linkedin.com/in/ashwini-ranadive  
**Email:** ranadiveashwini2@gmail.com
