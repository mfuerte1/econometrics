library(readr)
library(dplyr)
library(epiDisplay)
library(modelsummary)

# Read in the data
covid_death <- read_csv("covid_death.csv")

# Create 'urban' binary variable:
#    1 if 'urban_status' is "large", "medium", or "small"
#    0 if "micropolitan" or "rural"
covid_death <- covid_death %>%
  mutate(
    urban = if_else(rucc_2013 <= 3, 1L, 0L)
  )

# Inspect the distribution of the new variable
tab1(covid_death$rucc_2013, main = "Urban Status Categories")
tab1(covid_death$urban,        main = "Binary Urban Indicator")

# Create COVID death rate:
covid_death <- covid_death %>%
  mutate(covid_death_rate = (`covid.19.deaths` / `total.deaths`) * 100) 

#    Quick summary of the rate
summary(covid_death$covid_death_rate)

#  Regress COVID death rate on urban indicator
model <- lm(covid_death_rate ~ urban, data = covid_death)

#  Present results in a modelsummary table and save as HTML
#    This will write 'covid_death_model.html' in your working directory
modelsummary(
  model,
  output = "covid_death_model.html",
  title  = "COVID Death Rate ~ Urban Indicator",
  gof_omit = "Adj.|AIC|BIC|Log|F|Std.Errors"
)
