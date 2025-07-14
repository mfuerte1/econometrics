# Empirical Economics Teaching Datasets & Case Studies

**A one‑stop collection of reproducible mini‑projects for courses in applied econometrics, labour economics, and demographic analysis.**

*Last updated: 2025‑07‑14*

---

##  Repository Structure

| Folder                                           | Project                                                         | Purpose                                                             |
| ------------------------------------------------ | --------------------------------------------------------------- | ------------------------------------------------------------------- |
| `CPS_SW_Education/`                              | **CPS‑SW Education – Earnings × Schooling**                     | Returns to schooling & the gender wage gap using a 2004 CPS extract |
| `applied_econometrics_case_studies/`             | **Applied Econometrics Case Studies**                           | Beauty‐premium wages & COVID‑19 vaccination vs deaths               |
| `covid_mortality_gender_gap_fertility_analysis/` | **COVID Mortality • Gender Pay Gap • Son‑Preference Fertility** | Three concise analyses built on CDC, GSS and fertility micro‑data   |
| `education_earnings_project/`                    | **Returns to Education – CPS Southwest**                        | Mincer‑equation tutorials plus full assignment template             |
| `fertility_analysis_project/`                    | **Global Fertility Analysis Dashboard**                         | Interactive dashboard based on UN fertility rates 1960‑2020         |
| `gender_wage_gap_study/`                         | **Gender–Race Wage Gap Study**                                  | Cross‑section wage regressions with intersectional indicators       |
| `wage_determinants_CPS1988_PSID1976/`            | **Determinants of U.S. Wages – CPS 1988 & PSID 1976**           | Classic Mincer earnings functions with robustness checks            |

---

##  Quick Start

1. **Clone the repo**
   ```bash
   git clone https://github.com/<your‑org>/<this‑repo>.git
   cd <this‑repo>
   ```
2. **Install R ≥ 4.2** and the [Quarto CLI](https://quarto.org) ≥ 1.5.
3. **Grab the common R packages**
   ```r
   install.packages(c(
     "tidyverse",     # readr, dplyr, ggplot2, …
     "modelsummary",  # regression tables
     "AER",           # data & functions from *Applied Econometrics with R*
     "car",           # hypothesis tests
     "epiDisplay"     # descriptive‑stats helpers
   ))
   ```
4. **Render notebooks / run scripts**
   ```bash
   # Example: beauty‑premium case study
   cd applied_econometrics_case_studies
   quarto render beauty_premium_wage_analysis.qmd
   open beauty_premium_wage_regression_report.html
   ```

---

##  Project Capsules

### CPS\_SW\_Education — Earnings × Schooling

- Five‑minute *quick‑start* notebook & HTML.
- Full earnings‑vs‑education analysis with gender interaction and F‑test.
- Stand‑alone R script for summary‑stat sanity checks.

### Applied Econometrics Case Studies

- **Beauty‑premium wage regression** (Hamermesh & Biddle, 1994).
- **County‑level COVID‑19 vaccination vs death rates** with omitted‑variable bias demo.

### COVID Mortality • Gender Pay Gap • Son‑Preference Fertility

- Urban vs rural COVID‑19 mortality OLS (HC3 SEs).
- GSS wage gap regressions plus Angrist & Evans fertility LPM replication.

### Returns to Education — CPS Southwest

- Toy 5‑observation Mincer demo and full CPS tutorial/assignment.
- Robustness checks: quadratic schooling term, gender control, literature mini‑review.

### Global Fertility Analysis Dashboard

- UN WPP ASFR 1960‑2020 cleaned via `data_cleaning.R`.
- Interactive Plotly dashboard (`fertility_trends_visualization.html`).

### Gender–Race Wage Gap Study

- Cross‑section of 13 633 workers; intersectional gender × race wage gaps.
- One‑click Quarto render to HTML report.

### Determinants of U.S. Wages — CPS 1988 & PSID 1976

- CPS 1988: three‑model Mincer sequence with HC3 errors.
- PSID 1976: children–labour‑supply descriptives + wage regression CI.

---

##  Data Sources

- **Current Population Survey** (various years)
- **Panel Study of Income Dynamics** (1976)
- **CDC** Provisional Mortality Counts
- **General Social Survey** integrated cross‑sections
- **UN World Population Prospects** 2022 revision

Each sub‑project cites its original sources; please credit them in any derivative work.

---

##  Contributing

Pull requests that add new mini‑cases, update data, or modernise code are welcome. Please:

1. Fork & branch from `main`.
2. Follow existing folder‑naming conventions.
3. Include at least one rendered output file (`.html` or `.pdf`).
4. Run `lintr`/`styler` or an equivalent formatter before submitting.

---

##  License

- **Code**: MIT
- **Data**: Original licences of the respective sources

---

##  Maintainer

**Marcos Fuerte** — [marcos.fuerte.work@gmail.com](mailto\:marcos.fuerte.work@gmail.com)

