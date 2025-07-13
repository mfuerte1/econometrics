# Example 1
SE <- (39/sqrt(4239))
t <- (174-200)/SE
p <- 2*pnorm(-abs(t))

ci_low <- 174-1.96*SE
ci_high <- 174+1.96*SE

# Example 2 Covid - 
SE1 <- (0.09/sqrt(245))
t1 <- (0.014-0)/SE1
p1 <- 2*pnorm(-abs(t))

ci_low1 <- 0.014-1.96*SE1
ci_high1 <- 0.014+1.96*SE1

# Example 3 - Fail to Reject 
SE2 <- (0.4/sqrt(52))
t2 <- (3.41-0)/SE2
p2 <- 2*pnorm(-abs(t))

ci_low2 <- 3.41-1.96*SE2
ci_high2 <- 3.41+1.96*SE2

# Example 4
# Are Girls statistically more clever than boys?
# Girl Stats: µ = 11.8; σ = 3.1; N = 95000
# Boys Stats: µ = 10.7; σ = 3.3; N = 97000
#Ho⍙=g-b=0
#H1⍙=g-b≠0

p_value <- 1.92
SE3 <- (3.1^2/9500+3.3^2/9700)
t3 <- (11.8-10.7)/SE3
p3 <- 2*pnorm(-abs(t))

ci_low3 <- 11.8 - 10.7 - p_value*sqrt(SE3)
ci_high3 <- 3.41 + p_value*sqrt(SE3)

# Example 5

