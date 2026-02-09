# 1. Total Record Count + Disease Prevalence
SELECT 
  COUNT(*) AS total_records,
  COUNTIF(cardio_status = 'Has Disease') AS disease_cases,
  COUNTIF(cardio_status = 'No Disease') AS healthy_cases,
  ROUND(COUNTIF(cardio_status = 'Has Disease') * 100.0 / COUNT(*), 2) AS disease_percent
FROM `sp25-i535-hj48-cholbqtrack.cardiovascular_analysis.cleaned_cardiovascular_data`;

# 2. Distribution by Age Group
SELECT 
  age_group,
  COUNT(*) AS total_people,
  COUNTIF(cardio_status = 'Has Disease') AS with_disease,
  ROUND(COUNTIF(cardio_status = 'Has Disease') * 100.0 / COUNT(*), 2) AS disease_percent
FROM `sp25-i535-hj48-cholbqtrack.cardiovascular_analysis.cleaned_cardiovascular_data`
GROUP BY age_group
ORDER BY age_group;

# 3. BMI Categories vs Disease
SELECT 
  bmi_category,
  COUNT(*) AS total_people,
  COUNTIF(cardio_status = 'Has Disease') AS with_disease,
  ROUND(COUNTIF(cardio_status = 'Has Disease') * 100.0 / COUNT(*), 2) AS disease_percent
FROM `sp25-i535-hj48-cholbqtrack.cardiovascular_analysis.cleaned_cardiovascular_data`
GROUP BY bmi_category
ORDER BY disease_percent DESC;

# 4. Cholesterol & Glucose Impact
SELECT 
  cholesterol_level,
  glucose_level,
  COUNT(*) AS total,
  COUNTIF(cardio_status = 'Has Disease') AS with_disease,
  ROUND(COUNTIF(cardio_status = 'Has Disease') * 100.0 / COUNT(*), 2) AS disease_percent
FROM `sp25-i535-hj48-cholbqtrack.cardiovascular_analysis.cleaned_cardiovascular_data`
GROUP BY cholesterol_level, glucose_level
ORDER BY disease_percent DESC;

# 5. Lifestyle Habits vs Disease
SELECT 
  smoker,
  alcohol_intake,
  activity_status,
  COUNT(*) AS total_people,
  COUNTIF(cardio_status = 'Has Disease') AS with_disease,
  ROUND(COUNTIF(cardio_status = 'Has Disease') * 100.0 / COUNT(*), 2) AS disease_percent
FROM `sp25-i535-hj48-cholbqtrack.cardiovascular_analysis.cleaned_cardiovascular_data`
GROUP BY smoker, alcohol_intake, activity_status
ORDER BY disease_percent DESC;

# 6. Average Stats (Height, Weight, BMI, BP)
SELECT 
  AVG(height) AS avg_height_cm,
  AVG(weight) AS avg_weight_kg,
  AVG(bmi) AS avg_bmi,
  AVG(systolic_bp) AS avg_systolic,
  AVG(diastolic_bp) AS avg_diastolic
FROM `sp25-i535-hj48-cholbqtrack.cardiovascular_analysis.cleaned_cardiovascular_data`;

# 7. Correlation Prep: Age vs BP/BMI
SELECT 
  age_years,
  AVG(bmi) AS avg_bmi,
  AVG(systolic_bp) AS avg_sys,
  AVG(diastolic_bp) AS avg_dia
FROM `sp25-i535-hj48-cholbqtrack.cardiovascular_analysis.cleaned_cardiovascular_data`
GROUP BY age_years
ORDER BY age_years;



