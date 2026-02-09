# Cardiovascular Health Analytics & Risk Dashboard

Analytics project analyzing cardiovascular risk factors across 68K+ patient records using
SQL and Google BigQuery, with insights surfaced via an interactive Looker Studio dashboard.

The goal of this project is to identify high-risk patient cohorts and key clinical drivers
to support population-level health analysis and preventive decision-making.

---

## Problem Statement
Healthcare analysts and clinicians need to understand how cardiovascular risk varies across
demographic and clinical cohorts in order to prioritize preventive interventions.

---

## Data
- Source: De-identified patient health records
- Size: 68K+ records
- Key fields:
  - Demographics (age, gender)
  - Clinical indicators (BMI, blood pressure, cholesterol)
  - Outcome variables (cardiovascular risk indicators)

---

## Data Processing & Modeling
- Raw data ingested and transformed in **Google BigQuery**
- Feature engineering performed using SQL:
  - Age bands
  - Comorbidity indicators
  - Risk score groupings
- Data quality checks applied to validate ranges and missing values

---

## Metrics Defined
- Cardiovascular risk rate
- High-risk cohort proportion
- Risk distribution by age group
- Cohort-level comparisons across demographics

---

## Dashboard (Looker Studio)

An interactive Looker Studio dashboard was built to enable:
- Executive-level KPI monitoring
- Cohort-based risk comparison (age, BMI, cholesterol, glucose)
- Behavioral factor analysis (smoking, alcohol intake, physical activity)
- Distribution-level exploration of clinical indicators

🔗 **Live Dashboard (view-only):**  
https://lookerstudio.google.com/s/nwkJduZwe0I

### Dashboard Preview
![Overview KPIs](dashboards/overview_kpis.png)
![Risk Distributions](dashboards/risk_distributions.png)

---

## Results & Key Findings

### Dataset Summary
- **Total cleaned records:** 68,714
- **Prevalence of cardiovascular disease:** 49.50%
- **Average age:** 53.29 years
- **Average BMI:** 27.5
- **Average systolic blood pressure:** 126.6 mmHg

### Risk & Cohort Insights
- Cardiovascular disease prevalence increases with **higher cholesterol and glucose levels**, with a visibly higher proportion of affected individuals in the “Above Normal” and “Well Above Normal” categories.
- **BMI distribution** is skewed toward the overweight range (25–29.9), indicating elevated population-level risk even among non-obese cohorts.
- Patients with cardiovascular disease show **lower physical activity rates** compared to non-disease cohorts, while smoking and alcohol usage patterns differ modestly.
- **Average systolic blood pressure increases with age**, peaking in older age groups (50+), reinforcing age as a primary risk stratifier.

These findings support the use of cohort-based risk segmentation rather than single-metric thresholds for cardiovascular risk assessment.

---

## Limitations
- Observational data only (no causal inference)
- Static snapshot; no longitudinal modeling
- Dependent on completeness of clinical measurements

---

## Next Steps
- Incorporate longitudinal trends
- Add predictive risk scoring models
- Automate data refresh pipelines
