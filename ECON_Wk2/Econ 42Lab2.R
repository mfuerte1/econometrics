## SETTING UP ## 

library(AER)
library(foreign)
library(readr)

## CALCULATOR ##

X <- c(2,6,7,9)
mean_X <- mean(X)
var_X <- var(X)
sd_X <- sd(X)

print(mean_X)
print(var_X)
print(sd_X)

summary(X)

Y <- c(2,6,7,9,15,18,20, 8792847, 72398145)
median_Y <- median(Y)
quantile(Y, 0.1)    # 10th percentile
quantile(Y, 0.25)   # 25th percentile

# Y is redefined
Y <- c(2,2,4,0)
cov_XY <- cov(X, Y)
cor_XY <- cor(X, Y)

summary(Y)

table <- table(X, Y)

## GENERATE ##
X <- c(1,2,3,4)
Y <- c(9,8,7,6)
  
df<-data.frame(X,Y)
# View(df)

# url <- "http://fmwww.bc.edu/ec-p/data/stockwatson/caschool.dta"
# mode = "wb"; write binary
# download.file(url, destfile = "caschool.dta", mode = "wb")

# read.dta
df2<-read.dta("http://fmwww.bc.edu/ec-p/data/stockwatson/caschool.dta")
# View(df2)

# .csv file using library(readr)
df3 <- read_csv("ECON42/ECON42_Week2/caschool.csv")
# View(df3)