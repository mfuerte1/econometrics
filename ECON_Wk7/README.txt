Project: COVID‑19 Mortality, Gender Pay Gap, and Son‑Preference Fertility Analyses
Author : <Marcos Fuerte>
Date   : 2025‑03‑24 (last edited)

--------------------------------------------------------------------
DATA FILES
--------------------------------------------------------------------
us_county_covid_total_deaths_2020‑23.csv
    • CDC/NCHS provisional mortality counts at the county level
    • Key fields: county_fips, total_deaths, covid19_deaths, rucc_2013
    • Used to compute covid_death_rate (%) and classify Urban (RUCC ≤ 3)

angrist_evans_fertility_us_1980s.csv
    • Micro data replicating Angrist & Evans (1998) on U.S. mothers
    • Variables: morekids (“yes”/“no”), gender1–gender4, age, education …
    • Re‑coded: morekids_b (1 = wants >2 kids); boy1 (1 = first child male)

gss_real_income_1972‑2018.csv
    • Integrated GSS sample with real income and socio‑demographics
    • Variables: realrinc (1986 USD), age, gender, wrkstat, marital status,
      occ10, prestg10, childs, year, etc.

--------------------------------------------------------------------
CODE / NOTEBOOKS
--------------------------------------------------------------------
covid_mortality_urbanicity_analysis.R
    • Recreates Figure 1 and Table 1 for the COVID‑mortality project:
          – builds ‘urban’ dummy from RUCC codes
          – computes covid_death_rate
          – OLS: covid_death_rate ~ urban
          – outputs covid_mortality_urbanicity_reg_results.html

gender_gap_fertility_analysis.qmd
    • Quarto notebook that:
          Part A – GSS: descriptive stats, ggplot, OLS wage regressions
          Part B – Fertility: LPM on boy1 → morekids_b
    • Produces gender_gap_fertility_report.{html,pdf}

--------------------------------------------------------------------
DERIVED OUTPUT
--------------------------------------------------------------------
covid_mortality_urbanicity_reg_results.html
    • modelsummary() table of the COVID OLS regression

gender_gap_fertility_report.html
gender_gap_fertility_report.pdf
    • Human‑readable reports for the GSS & Fertility analyses
    • Contain all tables, figures, and written answers
