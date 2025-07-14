Project: APPLIED ECONOMETRICS CASE STUDIES
Project Folder Name: applied_econometrics_case_studies/
=================================

This repository contains two self-contained examples that apply 
introductory econometric techniques to real-world questions.

-----------------------------------------------------------------
1. Beauty Premium in the Labour Market
-----------------------------------------------------------------
 employee_beauty_wage_data.csv
    • 1 260 observations originally compiled by Hamermesh & Biddle (1994).
    • Variables: hourly WAGE, log-wage, education, experience (+square),
      race, gender, union status, city size, and a 5-point facial beauty score.

 beauty_premium_wage_analysis.qmd
 beauty_premium_wage_regression_report.html
    • Quarto notebook → HTML output.
    • Steps: data cleaning ➜ summary stats ➜ scatter-plot of looks vs ln(wage)
      ➜ OLS models (linear and categorical looks, controls, interactions)
      ➜ interpretation of coefficients, R², F-tests.
    • Shows that unattractive workers face a statistically significant wage
      penalty (~14 %) whereas the reward for high attractiveness is smaller
      and often insignificant.

-----------------------------------------------------------------
2. COVID-19 Vaccination & Deaths across US Counties
-----------------------------------------------------------------
 county_covid_vax_deaths_usa.csv
    • Snapshot combining CDC vaccination tracker and 2019 Census population.
    • Variables: county FIPS, population, series_complete_pop_pct,
      cumulative Covid-19 deaths, and auxiliary columns.

 covid_vax_vs_deaths_analysis.qmd
 covid_vax_vs_deaths_regression_report.html
    • Quarto notebook → HTML output.
    • Steps: handle missing death counts ➜ simple regression of deaths on
      vax-rate ➜ add population control ➜ compare model fit via AIC/BIC.
    • Demonstrates that apparent positive correlation is spurious; once
      county size is held constant, higher vaccination rates predict *fewer*
      deaths.

-----------------------------------------------------------------
Reproduce the Analyses
-----------------------------------------------------------------
  1. Install R ≥4.2 and packages: tidyverse, modelsummary, ggplot2, AER, car.
  2. Open the corresponding *.qmd file in RStudio or run:
         quarto render beauty_premium_wage_analysis.qmd
         quarto render covid_vax_vs_deaths_analysis.qmd
  3. HTML reports will appear in the same folder.

-----------------------------------------------------------------
Data Sources & Citation
-----------------------------------------------------------------
 • Hamermesh, D. S., & Biddle, J. E. (1994). “Beauty and the Labor Market”.
   *American Economic Review*, 84(5), 1174-1194.
 • Centers for Disease Control and Prevention (CDC) COVID-19 Integrated
   County-level Vaccination Dataset (downloaded 2025-07-14).
 • US Census Bureau, 2019 County Population Totals.

-----------------------------------------------------------------
License
-----------------------------------------------------------------
Code: MIT License | Data: original licenses from respective sources.
