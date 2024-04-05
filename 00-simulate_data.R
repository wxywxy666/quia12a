# Load necessary library
library(dplyr)

set.seed(42) # For reproducibility

# Simulate raw ages
raw_ages <- sample(25:85, 1000, replace = TRUE)

# Vectorized approach to categorize age
age_categories <- cut(raw_ages,
                      breaks = c(-Inf, 29, 40, 50, 60, 70, 80, Inf),
                      labels = c("below 30", "30-40", "40-50", "50-60", "60-70", "70-80", "above 80"))

# Simulate the rest of the data
data <- data.frame(
  HospitalID = sample(1:5, 1000, replace = TRUE),
  YearOfDeath = sample(2003:2022, 1000, replace = TRUE),
  AgeAtDeath = age_categories,
  CancerType = sample(c("Breast", "Prostate", "Lung", "Colorectal"), 1000, replace = TRUE),
  DeathCount = rpois(1000, lambda = 10) # Assuming an average of 10 deaths per observation
)
write.csv(data, "data")
