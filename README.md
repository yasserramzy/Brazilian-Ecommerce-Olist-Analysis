# 🛒 Brazilian E-Commerce Analysis — Olist Dataset

![Python](https://img.shields.io/badge/Python-3.10-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## 📌 Project Overview

An end-to-end data analysis project on the [Olist Brazilian E-Commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) covering **96,469 delivered orders** across **Brazil from 2016 to 2018**.

The project follows a full data analyst workflow:
**Data Cleaning → Exploratory Analysis → SQL Business Queries → Power BI Dashboard**

---

## 🎯 Business Questions Answered

- How did revenue trend over time and what drove the November 2017 peak?
- Which Brazilian states generate the most revenue and have the worst delivery performance?
- What is the single biggest driver of customer satisfaction?
- Which product categories drive the most revenue vs highest order value?
- What percentage of customers return for a second purchase?
- How are customers segmented using RFM analysis?

---

## 📊 Key Findings

| Insight | Finding |
|---|---|
| 💰 Total Revenue | R$ 15,418,251 across 96,469 orders |
| 📈 Growth | Revenue grew 9x from Jan 2017 to Nov 2017 |
| 🏆 Top State | São Paulo — R$5.77M (37.4% of total revenue) |
| ⚠️ Worst State | Alagoas — 21.4% late order rate |
| ⭐ Satisfaction Driver | Late orders score 2.27 vs 4.29 for on-time — a 2.02 point drop |
| 🛍️ Top Category | Health & Beauty — R$1.41M revenue |
| 💳 Payment | 76.7% of orders paid by credit card, avg 3.5 installments |
| 🔄 Retention | 97% of customers never returned after first purchase |
| 👥 At Risk | 37,340 customers generating R$6.17M at risk of churning |

---

## 🗂️ Project Structure
├── data/                         # Original raw CSV files (9 tables)
├── notebooks/
│   ├── 01_data_cleaning.ipynb    # Data cleaning & merging pipeline
│   ├── 02_EDA.ipynb              # Exploratory data analysis & charts
│   └── 03_SQL_analysis.ipynb     # MySQL database setup & queries
├── sql/
│   ├── 01_revenue_by_state.sql
│   ├── 02_top_sellers.sql
│   ├── 03_late_delivery_impact.sql
│   ├── 04_rfm_segmentation.sql
│   ├── 05_peak_hours.sql
│   ├── 06_payment_behavior.sql
│   └── 07_category_performance.sql
├── outputs/
│   ├── master_delivered.csv      # Clean master dataset (96,469 rows)
│   ├── charts/                   # EDA visualizations
│   └── Olist_Dashboard.pbix      # Power BI dashboard file
└── README.md

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Python** | Data cleaning, merging, EDA |
| **Pandas & NumPy** | Data manipulation |
| **Matplotlib & Seaborn** | Data visualization |
| **MySQL** | Business analysis queries |
| **Power BI** | Interactive executive dashboard |

---

## 📈 Dashboard Pages

| Page | Content |
|---|---|
| **Executive Overview** | Revenue KPIs, monthly trend, payment breakdown |
| **Geographic Analysis** | Revenue & delivery performance by Brazilian state |
| **Product & Seller** | Category revenue, freight costs, top sellers |
| **Customer Satisfaction** | RFM segments, review analysis, retention metrics |

---

## 🔍 Analysis Highlights

### 1. Revenue Growth
Revenue grew from R$127K in January 2017 to R$1.15M in November 2017 — a **9x increase in 10 months**. The November peak confirms Black Friday as the strongest sales event on the platform.

### 2. Delivery Drives Satisfaction
The most powerful finding in the dataset — delivery time is the **single biggest driver of customer satisfaction:**

| Delivery Time | Avg Review Score |
|---|---|
| 0–5 days | 4.43 |
| 6–10 days | 4.35 |
| 11–15 days | 4.25 |
| 16–20 days | 4.09 |
| 21–30 days | 3.58 |
| 30+ days | 2.17 |

### 3. Customer Retention Crisis
**97% of customers never returned** after their first purchase. Only 3% are repeat buyers. RFM analysis reveals 37,340 customers in the "At Risk" segment generating R$6.17M — the biggest retention opportunity for the business.

### 4. Geographic Divide
São Paulo dominates with R$5.77M revenue and only 8.3 days average delivery. Northern states like Alagoas (24 days avg, 21.4% late rate) and Amazonas (26 days avg) face severe logistics challenges reflected in lower review scores.

---

## ⚙️ How to Run This Project

### Python Notebooks
```bash
pip install pandas numpy matplotlib seaborn mysql-connector-python jupyter
jupyter notebook
```
Run notebooks in order:
1. `01_data_cleaning.ipynb`
2. `02_EDA.ipynb`
3. `03_SQL_analysis.ipynb`

### MySQL Setup
```sql
CREATE DATABASE olist_ecommerce;
USE olist_ecommerce;
```
Then run `03_SQL_analysis.ipynb` to load the data and execute queries.

### Power BI Dashboard
Open `outputs/Olist_Dashboard.pbix` in Power BI Desktop and update the data source path to your local `outputs/` folder.

---

## 📁 Dataset

**Source:** [Olist Brazilian E-Commerce — Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The dataset contains 9 relational tables with 100,000+ real e-commerce orders placed in Brazil between 2016 and 2018, provided by Olist — the largest department store in Brazilian marketplaces.

---

## 👤 Author

**Yasser Ramzy**
Data Analyst | Finance Background

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue)](https://www.linkedin.com/in/yasser-ramzy-154168261/)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-black)](https://github.com/yasserramzy)

