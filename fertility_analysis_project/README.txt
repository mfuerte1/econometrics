Fertility_Analysis_Project/
│
├── global_fertility_rates_1960_2020.csv
│   • Description:
│       • Contains age-specific fertility rates (ASFR) for 5-year age groups,
│         across 150+ countries, annually from 1960–2020.
│   • Research background:
│       • Sourced from the United Nations World Population Prospects (UN WPP).
│       • Used to analyze long-term demographic shifts and inform public
│         health policy on reproductive health services.
│
├── data_cleaning.R
│   • Description:
│       • Data import, cleaning, and
│         transformation pipeline (missing-value handling, normalization,
│         age-group aggregation).
│   • Research background:
│       • References “Tremendous Data Wrangling for Demographic Studies,”
│         Journal of Population Research, 2019.
│
├── visualization_setup.R
│   • Description:
│       • Choice of visualization libraries
│         (e.g., Plotly vs. D3), color palettes, and interactivity features.
│   • Research background:
│       • Based on best practices from “Data Visualization: A Practical
│         Introduction” by Kieran Healy, 2018.
│
├── fertility_trends_visualization.html
│   • Description:
│       • Standalone interactive dashboard built with HTML/JavaScript
│         (Plotly.js) showing:
│         – Country selection dropdown  
│         – Line charts of total fertility rate (TFR) over time  
│         – Heatmap of ASFR across age groups and years
│   • Research background:
│       • Visual design inspired by UN WPP online data portal.
│
├── fertility_dashboard.qmd
│   • Description:
│       • Quarto covering:
│         – Interpretation of TFR vs. ASFR plots  
│         – Code-reading exercises on reactive dropdowns  
│         – Short questions on color-blind–safe palettes
│   • Research background:
│       • Drawn from course readings on effective data storytelling.
│
└── fertility_dashboard_tutorial.qmd
    • Description:
        • Quarto tutorial that walks through:
          1. Importing and cleaning `global_fertility_rates_1960_2020.csv`  
          2. Generating static ggplot2 charts in R or Matplotlib in Python  
          3. Exporting and embedding interactive plots in HTML  
    • Research background:
        • Combines methodologies from “Practical Data Science with R” and
          “Interactive Data Visualization for the Web.”  

