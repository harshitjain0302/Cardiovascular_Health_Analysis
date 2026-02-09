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

## Dashboard
The Looker Studio dashboard provides:
- Executive-level risk overview
- Interactive cohort filtering
- Distribution and trend analysis

> Screenshots are included in `/dashboards`.

---

## Key Insights
- Cardiovascular risk increases sharply beyond specific age thresholds
- Certain demographic cohorts exhibit consistently higher risk rates
- Risk distribution varies significantly across clinical indicators

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
