CREATE OR REPLACE TABLE `sp25-i535-hj48-cholbqtrack.cardiovascular_analysis.cleaned_cardiovascular_data` AS
SELECT
  -- Age in years
  ROUND(age / 365.25, 1) AS age_years,

  -- Age group
  CASE
    WHEN ROUND(age / 365.25, 1) < 30 THEN 'Under 30'
    WHEN ROUND(age / 365.25, 1) BETWEEN 30 AND 40 THEN '30-40'
    WHEN ROUND(age / 365.25, 1) BETWEEN 41 AND 50 THEN '41-50'
    WHEN ROUND(age / 365.25, 1) BETWEEN 51 AND 60 THEN '51-60'
    ELSE '60+'
  END AS age_group,

  -- Height, weight
  height,
  weight,

  -- BMI and category
  ROUND(weight / POW(height / 100, 2), 1) AS bmi,
  CASE
    WHEN ROUND(weight / POW(height / 100, 2), 1) < 18.5 THEN 'Underweight'
    WHEN ROUND(weight / POW(height / 100, 2), 1) BETWEEN 18.5 AND 24.9 THEN 'Normal'
    WHEN ROUND(weight / POW(height / 100, 2), 1) BETWEEN 25 AND 29.9 THEN 'Overweight'
    ELSE 'Obese'
  END AS bmi_category,

  -- Blood pressure
  ap_hi AS systolic_bp,
  ap_lo AS diastolic_bp,

  -- Cholesterol level
  CASE
    WHEN cholesterol = 1 THEN 'Normal'
    WHEN cholesterol = 2 THEN 'Above Normal'
    WHEN cholesterol = 3 THEN 'Well Above Normal'
    ELSE 'Unknown'
  END AS cholesterol_level,

  -- Glucose level
  CASE
    WHEN gluc = 1 THEN 'Normal'
    WHEN gluc = 2 THEN 'Above Normal'
    WHEN gluc = 3 THEN 'Well Above Normal'
    ELSE 'Unknown'
  END AS glucose_level,

  -- Lifestyle features as labels
  CASE WHEN smoke = 1 THEN 'Yes' ELSE 'No' END AS smoker,
  CASE WHEN alco = 1 THEN 'Yes' ELSE 'No' END AS alcohol_intake,
  CASE WHEN active = 1 THEN 'Active' ELSE 'Inactive' END AS activity_status,

  -- Target
  CASE WHEN cardio = 1 THEN 'Has Disease' ELSE 'No Disease' END AS cardio_status

FROM `sp25-i535-hj48-cholbqtrack.cardiovascular_analysis.cardiovascular_data`
WHERE
  height BETWEEN 100 AND 250
  AND weight BETWEEN 30 AND 200
  AND ap_hi BETWEEN 80 AND 240
  AND ap_lo BETWEEN 40 AND 160
  AND age BETWEEN 10000 AND 30000
;