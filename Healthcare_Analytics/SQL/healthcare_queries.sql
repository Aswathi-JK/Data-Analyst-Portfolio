-- Table Row Counts
SELECT 'Patients' as Table_Name,
        COUNT(*) as Total_Count FROM patients
UNION ALL
SELECT 'Admissions', 
	COUNT(*) FROM admissions
UNION ALL
SELECT 'Hospitals',
	   COUNT(*) FROM hospitals
UNION ALL
SELECT 'Billing', 
       COUNT(*) FROM billing
UNION ALL
SELECT 'Diagnoses', 
        COUNT(*) FROM diagnoses;


-- Total Patients
SELECT COUNT(*) as Total_Patients 
FROM patients;

-- Patients by Gender
SELECT gender, 
	   COUNT(*) as Total_Patients 
FROM patients
GROUP BY gender;

-- Average length of stay
SELECT ROUND(AVG(los_days), 2) as Average_Length_of_Stay 
FROM admissions;

-- Top 10 Diagnoses
SELECT diag_desc as Disease ,
       COUNT(*) AS Total_Count
FROM diagnoses 
GROUP BY diag_desc
ORDER BY Total_Count DESC
LIMIT 10;

-- Hospital-wise Admission Count
SELECT h.name as Hospital_Name, 
       COUNT(*) as Total_Admission 
FROM admissions AS a
JOIN hospitals AS h
ON h.hospital_id = a.hospital_id
GROUP BY h.name
ORDER BY Total_Admission DESC;

-- Average Billing by Hospital
SELECT h.name as Hospital_Name, 
       ROUND(AVG(b.total_cost_inr)) AS Average_Billing
FROM billing AS b
JOIN admissions AS a
ON a.admission_id = b.admission_id
JOIN hospitals AS h
ON h.hospital_id = a.hospital_id
GROUP BY h.name
ORDER BY Average_Billing DESC;

-- Readmission Analysis
SELECT H.name as Hospital_Name,
       COUNT(*) AS Total_Readmission FROM admissions AS A
JOIN hospitals AS H
ON H.hospital_id = A.hospital_id
WHERE A.readmitted_30d > 0 OR A.readmitted_7D >0
GROUP BY H.name
ORDER BY Total_Readmission DESC;

-- Admissions by Admission Type
SELECT  admit_type AS Admit_Type, 
        COUNT(*) AS Total
FROM admissions
GROUP BY admit_type
ORDER BY Total DESC;

-- Top 5 Hospitals by Average Billing
SELECT h.name as Hospital_Name, 
       ROUND(AVG(b.total_cost_inr)) AS Average_Billing 
FROM billing as b
JOIN admissions AS a
ON a.admission_id = b.admission_id
JOIN hospitals AS h
ON h.hospital_id = a.hospital_id
GROUP BY h.name
ORDER BY Average_Billing DESC
 LIMIT 5;
 
 -- Hospitals whose average billing is greater than ₹50,000.
 SELECT h.name as Hospital_Name,
        ROUND(AVG(b.total_cost_inr)) AS Average_Billing 
FROM billing as b
JOIN admissions AS a
ON a.admission_id = b.admission_id
JOIN hospitals AS h
ON h.hospital_id = a.hospital_id
GROUP BY h.name
HAVING ROUND(AVG(b.total_cost_inr)) > 50000
ORDER BY Average_Billing DESC
LIMIT 5;

-- Admissions whose billing amount is higher than the overall average billing amount.
SELECT admission_id, 
	   total_cost_inr AS Bill_Amount 
FROM billing
WHERE total_cost_inr > 
(SELECT AVG(total_cost_inr) FROM billing);


-- Rank Hospitals by Average Billing

WITH HospitalBilling AS
(SELECT h.name AS Hospital_Name, 
        ROUND(AVG(b.total_cost_inr),2) AS Average_Bill_Cost
FROM billing AS b
JOIN admissions AS a
ON a.admission_id = b.admission_id
JOIN hospitals AS h
ON h.hospital_id = a.hospital_id
GROUP BY h.name)

SELECT Hospital_Name, 
       Average_Bill_Cost, 
       RANK() OVER(ORDER BY Average_Bill_Cost DESC) AS Hospital_Rank
FROM HospitalBilling;

-- Hospitals Admissions (Left JOIN)
SELECT h.name as Hospital_Name, 
       COUNT(a.admission_id) AS Total_Admission
FROM hospitals AS h
LEFT JOIN admissions AS a
ON h.hospital_id = a.hospital_id
GROUP BY h.name
ORDER BY Total_Admission DESC;

-- Admission Count by Billing Cost Category
SELECT CASE 
           WHEN b.total_cost_inr < 5000 THEN 'Low'
           WHEN b.total_cost_inr > 50000 THEN 'High'
           ELSE 'Medium'
       END AS Category, 
       COUNT(*) AS Total
FROM billing AS b
GROUP BY Category
ORDER BY Total DESC;

