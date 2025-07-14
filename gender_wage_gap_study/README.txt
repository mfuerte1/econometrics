Project: Gender–Race Wage Gap Study
Project Folder Name: gender-wage-gap-study
==========================

Project summary
---------------
This repository replicates a short empirical study of U.S. wage inequality,
focusing on how annual earnings vary by gender and by the intersection of
gender × race, while controlling for schooling and sector of employment.

File inventory
--------------
1. gender_wage_gap_microdata.csv
   • Clean cross-section of 13 633 individuals.
   • Variables:
     - earnings: annual pre-tax labour income (USD)
     - gender: "male"/"female"
     - black: "black"/"non-black"
     - education: highest grade completed (years)
     - worker_type: "public", "private, profit", "private, non-profit"
     - plus hours, age, marital status, disability, etc.

2. gender_wage_gap_analysis.qmd
   • Quarto document containing code, equations and narrative.
   • Steps:
       a. Load micro-data.
       b. Create indicator variables (female, black_, private).
       c. Produce descriptive stats table.
       d. Estimate OLS models of earnings and log-earnings.
       e. Discuss omitted-variable bias and interaction effects.
   • Requires: R ≥ 4.2, packages dplyr, tidyr, modelsummary, readr,
     quarto ≥ 1.5 for rendering.

3. gender_wage_gap_report.html
   • Pre-rendered HTML version of the QMD.
   • Open in any web browser—no R installation needed.
   • Contains all code, outputs and written interpretations.

Re-running the analysis
-----------------------
```bash
quarto render gender_wage_gap_analysis.qmd
