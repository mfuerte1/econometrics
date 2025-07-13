#####################################################
# Load the dataset
#####################################################
library(AER)
data("CPSSW8")        # now CPSSW8 is in your workspace

#####################################################
# Q‑5Earnings ~ region
#####################################################
reg_region <- lm(earnings ~ region, data = CPSSW8)
summary(reg_region)

# Why only 3 region coefficients?
# → Four region dummies minus one (the baseline) avoids perfect multicollinearity.

#####################################################
# Q‑6Interpret Midwest coefficient
#####################################################
coef_midwest <- coef(reg_region)["regionMidwest"]
cat(sprintf(
  "Midwest vs Northeast earnings difference: %.2f USD\n",
  coef_midwest))

#####################################################
# Q‑7log(earnings) ~ education
#####################################################
reg_logedu <- lm(log(earnings) ~ education, data = CPSSW8)
beta_edu <- coef(reg_logedu)["education"]
cat(sprintf(
  "Each extra school year raises predicted earnings by about %.1f%%\n",
  100 * beta_edu))

#####################################################
# Q‑8College dummy (education > 12)
#####################################################
CPSSW8$college <- as.integer(CPSSW8$education > 12)
reg_college <- lm(log(earnings) ~ college, data = CPSSW8)

beta_college <- coef(reg_college)["college"]
pct_return   <- (exp(beta_college) - 1) * 100
cat(sprintf(
  "Estimated college premium: %.1f%%\n",
  pct_return))
