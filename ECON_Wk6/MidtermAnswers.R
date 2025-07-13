# Midterm Answers 

library(AER)
library(epiDisplay)

data(PSID1976)

df<- PSID1976
table <- (df$participation)

tab1(df$oldkids)
tab1(df$youngkids[df$oldkids==0])

length(unique(df$education))

mean(df$hours)

mean(df$wage)

mean(df$wage[df$oldkids==0 & df$youngkids==0 ])
mean(df$wage[df$oldkids==0 | df$youngkids==0 ])
summary(lm(wage~education, df))

p_value <- 1.96

# confidence interval 
low <-  0.45264 - p_value*0.04918
high <-  0.45264 + p_value*0.04918

df$w_hat <- -3.18694 + 0.45264*df$education

ess<- sum(df$w_hat - mean(df$education))
