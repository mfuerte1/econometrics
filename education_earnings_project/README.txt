Project: Returns to Education – CPS Southwest Extract
Project Folder Name: education_earnings_project
=====================================================

Brief
-----
This repository contains teaching materials and data that demonstrate how to
estimate and interpret the Mincer earnings equation using both a small toy
dataset and the CPSSW (Current Population Survey Southwest) micro-data.

File inventory
--------------

1. quickstart_mincer_demo.qmd  
   - A concise Quarto document that walks through a five‑observation toy example,
     calculates means, fits OLS regressions manually and with `lm()`, draws a
     scatterplot, and interprets coefficients.

2. quickstart_mincer_demo.html  
   - Rendered HTML version of the above for quick viewing in any browser.

3. quickstart_mincer_demo_knitlog.R  
   - Automatic knit log produced by Quarto/knitr capturing the exact R commands
     executed to generate *quickstart_mincer_demo.html*. Keep for
     reproducibility; safe to delete if storage is a concern.

4. education_earnings_walkthrough.qmd  
   - A step‑by‑step tutorial that:
       • Loads `cps_sw_education_earnings.csv`  
       • Fits the canonical earnings‑on‑schooling regression  
       • Builds confidence intervals manually and checks with `summary()`  
       • Generates predicted earnings for every respondent  
       • Discusses practical interpretation and limitations.

5. education_earnings_walkthrough.html  
   - Rendered HTML of the walkthrough.

6. education_earnings_fullreport.qmd  
   - A polished assignment/report that expands on the walkthrough by adding
     robustness checks (e.g., gender controls, quadratic education term) and
     a short literature review on returns to schooling.

7. cps_sw_education_earnings.csv  
   - 2,950‑row extract of the CPS covering 1992–2004. Variables include  
     `education` (years of schooling), `earnings` (hourly wage, USD), `gender`,
     `age`, and more. Original source: AER package, dataset “CPSSWEducation”.

How to reproduce the analyses
-----------------------------
1. Open any *.qmd* file in RStudio or VS Code (with the Quarto extension).
2. Click **Render**. All required R packages will be loaded automatically; if
   they are missing, install them with `install.packages()`.
3. To work offline, ensure `cps_sw_education_earnings.csv` sits in the same
   folder as the *.qmd* documents or adjust the `read.csv()` path.

Citation
--------
The CPSSW data are courtesy of the *Applied Econometrics with R* (AER) package.
If you publish results based on these materials, please cite AER and any other
packages listed in the documents’ session information.

Maintainer
----------
<Marcos Fuerte> – last updated: <2025‑07‑13>
