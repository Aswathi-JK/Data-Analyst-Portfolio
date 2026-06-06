# 📊 Healthcare Data Analysis using SQL

## 📌 Objective

Analyze healthcare data using SQL to identify patient trends, hospital performance, billing patterns, readmission rates, and diagnosis insights.

---

## 📂 Dataset

The project uses a healthcare dataset consisting of multiple related tables:

* admissions.csv
* billing.csv
* diagnoses.csv
* hospitals.csv
* patients.csv

---

## 🛠️ Tools Used

* MySQL Workbench
* SQL
* CSV Files
* Git & GitHub

---

## SQL Concepts Used
* SELECT
* WHERE
* GROUP BY
* ORDER BY
* LIMIT
* JOIN
* LEFT JOIN
* AVG()
* COUNT()
* ROUND()
* CASE WHEN
* Window Function (RANK OVER)
* Subquery
* HAVING 
* CTE (Common Table Expression)


## 🔍 Analysis Performed

### 1. Patient Analysis

* Calculated total patients
* Analyzed patient distribution by gender

### 2. Admission Analysis

* Calculated average length of stay
* Analyzed admissions by admission type
* Identified readmission patterns

### 3. Hospital Analysis

* Calculated hospital-wise admissions
* Ranked hospitals by average billing
* Identified the hospitals with the highest patient admission volumes.

### 4. Billing Analysis

* Calculated average billing by hospital
* Identified top billing hospitals
* Categorized admissions into Low, Medium, and High billing groups

### 5. Diagnosis Analysis

* Identified the top 10 diagnoses

---


## 📁 Project Structure

* Dataset/
  * admissions.csv
  * billing.csv
  * diagnoses.csv
  * hospitals.csv
  * patients.csv

* SQL/
  * healthcare_queries.sql
  * screenshots/


---

## 📸 Screenshots

* above_average_billing_admissions.png
* admissions_by_type.png
* average_billing_by_hospital.png
* average_length_of_stay.png
* billing_cost_category.png
* high_billing_hospitals.png
* hospital_admissions_leftjoin.png
* hospital_billing_rank.png
* hospital_wise_admissions.png
* patients_by_gender.png
* readmission_analysis.png
* table_row_count.png
* top5_hospitals_by_average_billing.png
* top_10_diagnoses.png
* total_patients.png

---

## 📈 Key Insights

* Identified hospitals with the highest admission volumes.
* Ranked hospitals based on average billing amount.
* Determined the most common diagnoses among admitted patients.
* Analyzed readmission trends across hospitals.
* Categorized billing records into Low, Medium, and High cost groups.
* Identified admissions with billing amounts above the overall average.

---

## 🎯 Conclusion

This project demonstrates the use of SQL for healthcare analytics using multiple related tables. The analysis leverages JOINs, aggregations, subqueries, CTEs, window functions, and CASE statements to generate insights on patient demographics, hospital performance, billing patterns, admissions, and diagnoses. These insights can support data-driven decision-making in healthcare operations and resource planning.




