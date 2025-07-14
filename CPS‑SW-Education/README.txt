Project: CPS‑SW Education ‑ Earnings‑Schooling Micro‑dataset
Project Folder Name: CPS-SW-Education
============================================================

This repository reproduces a compact empirical exercise on the
returns to schooling and the gender wage gap using the 2004 Current
Population Survey “Stock & Watson Education” (CPS‑SW‑Edu) extract.

--------------------------------------------------------------------
FILE‑BY‑FILE OVERVIEW
--------------------------------------------------------------------

1.  cpsswe_education_quickstart.qmd
    • Minimal Quarto notebook that:
      – clears the R workspace,
      – loads {readr},
      – imports the CPS‑SW‑Edu CSV straight from the AER data site, and
      – prints the first ten rows.
    • Intended as a five‑minute “hello‑dataset” demo for newcomers.

2.  cpsswe_education_quickstart.html
    • Rendered HTML output of #1.
      Open in a browser to verify that the quick‑start code executes. :contentReference[oaicite:2]{index=2}

3.  cpsswe_earnings_vs_education_analysis.qmd
    • Full lab notebook:
      – builds small example vectors, combines them into a tibble,
      – computes descriptive statistics with {dplyr},
      – draws a gender‑coloured earnings‑vs‑education scatterplot with
        {ggplot2},
      – estimates linear models with and without a gender×education
        interaction,
      – runs an F‑test (`anova()`) for differential returns,
      – creates a binary `higher_ed` indicator (>12 yrs schooling).
    • Prompts in‑line questions for students to answer in prose blocks.

4.  cpsswe_earnings_vs_education_analysis.html
    • Knitted HTML for #3: includes code, narrative, tables, and figure.
      Submit or share this version for grading/peer review. :contentReference[oaicite:3]{index=3}

5.  cpsswe_prepare_summary_stats.R
    • Stand‑alone R script that:
      – loads the CPS‑SW‑Edu data (either `.csv` or `.xls`),
      – calculates mean, SD, and median for earnings & education,
      – prints a tidy one‑row summary tibble.
    • Use it for quick console checks or as a pre‑lab warm‑up.

6.  CPSSWEducation.xls
    • Raw data file (2 950 obs. × 5 vars.) bundled for offline work.
      Variables: `age`, `gender`, `earnings` (US$ per hour),
      `education` (years of completed schooling), and row id.

7.  UKtrade2015.csv
    • Example trade‑flow dataset (27 EU HS‑2 commodities × partners).
      **Not used in the earnings analysis**—kept only as an import
      tutorial dataset; feel free to delete if out of scope.

--------------------------------------------------------------------
NAMING CONVENTION
--------------------------------------------------------------------
All filenames start with **cpsswe_** (the dataset tag) followed by a
phrase that states the file’s function.  

--------------------------------------------------------------------
RUN ORDER (recommended)
--------------------------------------------------------------------
1. cpsswe_prepare_summary_stats.R        – sanity‑check the data
2. cpsswe_education_quickstart.qmd       – eyeball the tibble / knit
3. cpsswe_earnings_vs_education_analysis.qmd  – full analysis
