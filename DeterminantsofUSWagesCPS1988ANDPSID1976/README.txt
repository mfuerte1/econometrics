Project: Determinants of U.S. Wages – CPS 1988 and PSID 1976 Examples
=====================================================================
Project Folder Name: wage_determinants_CPS1988_PSID1976

This repository contains two small, self‑contained empirical exercises
demonstrating classical wage‑determination regressions using public
micro‑datasets.

----------------------------------------------------------------------
File inventory
----------------------------------------------------------------------

us_cps_1988_wage_panel.csv
    • Raw micro‑data from the March 1988 Current Population Survey
      (wages, education, labour‑market experience, part‑time status,
      plus demographics).

wage_determinants_cps1988_analysis.qmd
    • Quarto notebook (R) that:
          – Reads the CPS 1988 data
          – Estimates three OLS models of monthly wage:
                Model 1: wage ~ education
                Model 2: wage ~ education + experience
                Model 3: wage ~ education + experience + parttime
          – Computes heteroskedasticity‑robust standard errors (HC3)
          – Compares coefficients across models to illustrate omitted
            variable bias
          – Stores predicted values and residuals in the data frame
          – Inline narrative explains interpretation of coefficients.

wage_determinants_cps1988_report.html
    • Rendered HTML output of the above notebook, suitable for quick
      viewing or grading.  No execution required.

psid1976_wage_children_analysis.R
    • Using the PSID 1976 sample shipped with
      the ‘AER’ package.  Tasks include:
          – Basic tabulations of children in household
          – Means of hours worked and wage by child status
          – Simple earnings function (wage ~ education)
          – Manual calculation of a 95 % confidence interval
            for the education slope.

----------------------------------------------------------------------
Re‑running the analyses
----------------------------------------------------------------------

1. Open an R‑enabled shell or RStudio session in this folder.
2. Install required packages if missing:

       install.packages(c("AER", "modelsummary", "ggplot2", "epiDisplay"))

3. For the CPS notebook:
       • Open `wage_determinants_cps1988_analysis.qmd`
       • Click “Render” (or run `quarto render` in the terminal).

4. For the PSID script:
       • Source `psid1976_wage_children_analysis.R` in R.

----------------------------------------------------------------------
Research background
----------------------------------------------------------------------

CPS 1988 analysis
-----------------
We estimate variants of the Mincer earnings function to quantify how an
additional year of schooling and an extra year of labour‑market
experience change *monthly* wage in the 1988 U.S. cross‑section.  We
also test whether working part‑time carries an earnings penalty after
controlling for human‑capital variables.  Robust (HC3) standard errors
address potential heteroskedasticity due to wage dispersion that grows
with schooling.

PSID 1976 analysis
------------------
Using longitudinal PSID data, we replicate core descriptive results
linking household composition (young vs. old children) to both labour‑
force participation and wages.  A single‑equation wage‑education OLS
regression is included to remind students how to compute and interpret
a confidence interval for the schooling coefficient.

----------------------------------------------------------------------
Contact
----------------------------------------------------------------------
Prepared by <Marcos Fuerte>, <2025-07-13>.  For questions, please email
<marcos.fuerte.work@gmail.com>.
