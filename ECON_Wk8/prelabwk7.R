# 1. Make sure the package is installed (first time only)
install.packages("AER")

# 2. Load the package for this session
library(AER)

# 3. Copy the data object into your workspace
data("CPSSW8")   # <- this is the step that actually makes CPSSW8 appear

# 4. Inspect it
head(CPSSW8)     # first 6 rows
str(CPSSW8)      # structure: variable names, types, a few values
summary(CPSSW8)  # quick numeric summaries / frequency tables
names(CPSSW8)    # just the column names



## 1. Show just the category names (levels)
levels(CPSSW8$region)
#> [1] "Midwest" "Northeast" "South" "West"

## 2. See the distinct values another way
unique(CPSSW8$region)

## 3. Get each category *and* how many observations fall in it
table(CPSSW8$region)
#>   Midwest Northeast      South       West 
#>       893        407       1298        530  
