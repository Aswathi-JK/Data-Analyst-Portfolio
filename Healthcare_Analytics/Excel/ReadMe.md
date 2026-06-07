# 📊 Healthcare Analytics Dashboard - Excel

## 📌 Objective

Analyze healthcare data using Excel to identify patient trends, admission patterns, diagnosis distribution, hospital utilization, and readmission insights through an interactive dashboard.

---

## 🛠️ Tools Used

* Microsoft Excel
* Power Query
* Power Pivot
* DAX (Data Analysis Expressions)
* Pivot Tables
* Pivot Charts
* Slicers
* Timeline Filter

---

## 📂 Dataset

The dataset consists of healthcare records across multiple related tables:

* admissions.csv
* billing.csv
* diagnoses.csv
* hospitals.csv
* patients.csv

---

## 🧹 Data Cleaning

* Imported and transformed data using Power Query
* Corrected data types
* Removed duplicate records
* Validated data quality by checking missing values and inconsistencies
* Verified unique keys and relationships

---

## 🔗 Data Modeling

Created relationships between:

* Patients → Admissions
* Hospitals → Admissions
* Admissions → Billing
* Admissions → Diagnoses

Implemented a relational data model using Power Pivot to support cross-filtering and interactive analysis.

---

## 📊 KPI Metrics

* Total Admissions: 120K
* Total Patients: 86K
* Readmission Rate: 11.8%
* Average LOS (Days): 6.9
* Average Billing Amount: INR 95.8K

---

## 📈 Visualizations

* Patients by Insurance Type
* Patients by State
* Admissions by Ward Type
* Top Diagnosis Categories
* Readmission Rate by State

---

## 🚀 Dashboard Features

* Interactive State Slicer
* Admission Year Timeline Filter
* Dynamic KPI Cards
* Cross-filtering across visuals
* Patient and operational healthcare analytics
* Interactive dashboard navigation

---

## 📁 Files

* Dataset/
  * admissions.csv
  * billing.csv
  * diagnoses.csv
  * hospitals.csv
  * patients.csv

* Excel/
  * Healthcare_Analytics_Dashboard.xlsx
  * screenshots/

---

## 📸 Dashboard Preview

![Excel Dashboard](screenshots/Healthcare_Analytics_dashboard.png)

### Data Model

![Excel Data Model](screenshots/excel_data_model.png)

---

## 📈 Key Insights

* Ayushman insurance covers the highest number of patients.
* Maharashtra has the largest patient population among the analyzed states.
* General wards account for the majority of hospital admissions.
* Cardiovascular conditions represent the most common diagnosis category.
* Readmission rates vary across states, with Madhya Pradesh showing the highest rate among the top states analyzed.
* Average length of stay remains below seven days across the analyzed period.

---

## 🎯 Conclusion

This project demonstrates the use of Excel for healthcare analytics through Power Query, Power Pivot, DAX measures, Pivot Charts, and interactive dashboard design. The dashboard provides insights into patient demographics, admissions, diagnosis categories, healthcare utilization, and readmission trends, supporting data-driven decision-making in healthcare operations.