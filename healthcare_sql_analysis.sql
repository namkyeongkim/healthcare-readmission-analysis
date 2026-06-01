-- Healthcare Readmission SQL Analysis

-- 1. Check total number of records
SELECT COUNT(*) AS total_records
FROM healthcare;

-- 2. Overall 30-day readmission rate
SELECT
    ROUND(AVG(readmitted_30d) * 100, 2) AS readmission_rate
FROM healthcare;

-- 3. Readmission rate by age group
SELECT
    age_group,
    COUNT(*) AS total_patients,
    ROUND(AVG(readmitted_30d) * 100, 2) AS readmission_rate
FROM healthcare
GROUP BY age_group
ORDER BY readmission_rate DESC;

-- 4. Readmission rate by Charlson Index
SELECT
    charlson_index,
    COUNT(*) AS total_patients,
    ROUND(AVG(readmitted_30d) * 100, 2) AS readmission_rate
FROM healthcare
GROUP BY charlson_index
ORDER BY charlson_index;

-- 5. Readmission rate by ICU admission

SELECT
    icu_admission,
    COUNT(*) AS total_patients,
    ROUND(AVG(readmitted_30d) * 100, 2) AS readmission_rate
FROM healthcare
GROUP BY icu_admission;

-- 6. Readmission rate by Chronic Kidney Disease

SELECT
    dx_chronic_kidney_disease,
    COUNT(*) AS total_patients,
    ROUND(AVG(readmitted_30d) * 100, 2) AS readmission_rate
FROM healthcare
GROUP BY dx_chronic_kidney_disease;

-- 7. Create Age Groups using CASE WHEN

SELECT
    CASE
        WHEN age < 35 THEN '18-34'
        WHEN age < 50 THEN '35-49'
        WHEN age < 65 THEN '50-64'
        ELSE '65+'
    END AS age_group,

    COUNT(*) AS total_patients,

    ROUND(
        AVG(readmitted_30d) * 100,
        2
    ) AS readmission_rate

FROM healthcare

GROUP BY age_group

ORDER BY readmission_rate DESC;

-- 8. High-risk patient groups using CTE

WITH risk_groups AS (
    SELECT
        patient_id,
        age,
        charlson_index,
        icu_admission,
        dx_chronic_kidney_disease,
        readmitted_30d,
        CASE
            WHEN age >= 65
              OR charlson_index >= 3
              OR icu_admission = 1
              OR dx_chronic_kidney_disease = 1
            THEN 'High Risk'
            ELSE 'Lower Risk'
        END AS risk_group
    FROM healthcare
)

SELECT
    risk_group,
    COUNT(*) AS total_patients,
    ROUND(AVG(readmitted_30d) * 100, 2) AS readmission_rate
FROM risk_groups
GROUP BY risk_group
ORDER BY readmission_rate DESC;

-- 9. Average hospital charges by readmission status

SELECT
    readmitted_30d,
    COUNT(*) AS total_patients,
    ROUND(AVG(total_charges_usd), 2) AS avg_total_charges
FROM healthcare
GROUP BY readmitted_30d
ORDER BY avg_total_charges DESC;