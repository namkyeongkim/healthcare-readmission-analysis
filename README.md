# Healthcare Readmission Analytics Project

## Project Overview

This project analyzes factors associated with 30-day hospital readmissions using a healthcare dataset containing 11,001 patient records. The analysis was conducted using Python, SQL, and Tableau to identify key risk factors, evaluate readmission patterns, and visualize findings through an interactive dashboard.

## Tools Used

- Python
- Pandas
- Matplotlib
- SQL (SQLite)
- Tableau
- Scikit-learn

## Dataset

The dataset contains 11,001 patient hospitalization records and includes patient demographics, clinical conditions, ICU admission status, insurance type, total hospital charges, length of stay, and 30-day readmission outcomes.

## Key Findings

- The overall 30-day readmission rate was **14.94%**.
- Patients aged **65+** had the highest readmission rate (**15.94%**).
- Readmission risk increased as the **Charlson Comorbidity Index** increased.
- ICU patients experienced higher readmission rates (**20.82%**) than non-ICU patients (**14.80%**).
- Patients with Chronic Kidney Disease (CKD) had a higher readmission rate (**19.55%**) than patients without CKD (**12.07%**).
- Patients staying **8–14 days** had the highest readmission rate (**16.3%**).
- Readmitted patients incurred approximately **$606 higher average hospital charges** than non-readmitted patients.
- High-risk patients identified through SQL analysis had a readmission rate of **15.96%**, compared to **7.05%** for lower-risk patients.
- Balanced Logistic Regression achieved the best performance for identifying readmitted patients, with a recall score of **58%**.

## Dashboard

### Tableau Dashboard Version 2

The dashboard summarizes key readmission KPIs, patient risk factors, clinical impact factors, and financial impact.

![Dashboard V2](dashboard%20v2.png)

## Repository Contents

- `healthcare_readmission_analysis.ipynb` — Data cleaning and exploratory data analysis
- `healthcare_sql_analysis.sql` — SQL-based healthcare readmission analysis
- `healthcare_readmission_prediction.ipynb` — Machine learning models for readmission prediction
- `healthcare_readmission_dashboard.twbx` — Initial Tableau dashboard
- `healthcare_readmission_analytics_dashboard_v2.twbx` — Enhanced Tableau dashboard
- `dashboard.png` — Initial dashboard preview
- `dashboard v2.png` — Enhanced dashboard preview

## Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- SQL Query Development
- Healthcare Data Analysis
- Dashboard Design
- Data Visualization
- Predictive Modeling
- Logistic Regression
- Class Imbalance Handling
- Tableau
