# 📊 Healthcare Analytics Dashboard - Power BI

## 📌 Objective

Analyze healthcare data using Power BI to identify patient trends, hospital performance, billing patterns, readmission rates, and diagnosis insights

---

## 🛠️ Tools Used

* Microsoft Power BI Desktop
* Power Query
* DAX (Data Analysis Expressions)

---

## 📂 Dataset

The dataset consists of healthcare records across multiple related tables:

* admissions.csv
* billing.csv
* diagnoses.csv
* hospitals.csv
* patients.csv

---

## Data Cleaning

* Corrected data types
* Removed duplicate records
* Verified data quality by checking missing values, errors, and value distributions

---

## Data Modeling

Created relationships between:

* Patients → Admissions
* Hospitals → Admissions
* Admissions → Billing
* Admissions → Diagnoses

Implemented a relational healthcare data model with one-to-many relationships and cross-filtering to support interactive analysis, KPI monitoring, and slicer-driven dashboard insights.

---

## KPIs

* Total Admissions: 120K
* Total Billing Amount: ₹11.5Bn
* Total Patients: 86K
* Average Billing Amount: ₹95.78K
* Average LOS (Days): 6.85

---

## Visualizations

* Total Patients by Gender
* Admissions by Type
* Top 10 Diagnoses
* Top 10 Hospitals by Average Billing
* Top 10 Hospitals by Readmissions
* Admissions Trend by Year

---


## 📁 Files

* Dataset/
  * admissions.csv
  * billing.csv
  * diagnoses.csv
  * hospitals.csv
  * patients.csv
* PowerBI/
  * Healthcare_Analytics_Dashboard.pbix
  * screenshots/

---

## 📸 Dashboard Preview

* screenshots/Healthcare_Analytics_Dashboard.pdf
* screenshots/data_model.png

---

## 🚀 Dashboard Features

* Interactive Year Slicer
* KPI Cards for key healthcare metrics
* Cross-filtering across visuals
* Hospital performance analysis
* Billing and readmission analysis
* Diagnosis trend analysis

---

## 📈 Key Insights

* Emergency admissions account for the majority of hospital admissions.
* Patient distribution is relatively balanced between male and female patients.
* Type 1 and Type 2 Diabetes Mellitus are among the most common diagnoses.
* Significant variation exists in average billing across hospitals.
* Readmission counts vary considerably among hospitals.
* Admission volumes remained relatively stable across the analyzed years.

---

## 🎯 Conclusion

This project demonstrates the use of Power BI for healthcare analytics using multiple related datasets. The dashboard incorporates data cleaning, data modeling, DAX measures, KPI monitoring, interactive slicers, and visual analytics to provide insights into patient demographics, admissions, billing patterns, diagnoses, hospital performance, and readmission trends. These insights can support data-driven decision-making in healthcare operations and resource planning.

