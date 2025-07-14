library(AER)
library(foreign)
library(readr)

# partner	uk trade partner 
# border	partner has a border with uk
# comlang	partner speaks english
# dist	distance to UK
# pop	partner's population
# gdp	partner'gdp
# gdpcap	partner 's gdp per capita
# colony	partner is a former colony
# gatt	partner is part of GATT
# rta	partner is part of a regional trade agreement with UK
# EU	partner is part of EU
# import	import value
# export	export value
# tradevalue	trade value import+export

df <- read.csv('UKtrade2015.csv', header = TRUE)

n_obs <- nrow(df)
n_obs 

n_vars <- ncol(df)
n_vars

n_border <- sum(df$border == 1)
n_border

# compute mean distance and round to whole number
avg_dist <- mean(df$dist)
round(avg_dist)

n_colonies <- sum(df$colony == 1)
n_colonies

cor_pop_gdp <- cor(df$pop, df$gdp)
round(cor_pop_gdp, 2) 

df$trade_balance <- df$export - df$import

# mean trade balance, rounded to 1 decimal
mean_tb <- mean(df$trade_balance)
round(mean_tb, 1)






