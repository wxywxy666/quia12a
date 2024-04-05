data <- read.csv("data")

# Test 9: Ensure DeathCount is an integer
test9 <- all(data$DeathCount %% 1 == 0)
print(paste("Test 9 - DeathCount is an integer:", test9))

# Test 1: Check if the year of death is a positive integer
test1 <- all(data$YearOfDeath == as.integer(data$YearOfDeath) & data$YearOfDeath > 0)
print(paste("Test 1 - Year of Death is positive integer:", test1))

# Test 2: Check if the year of death is within the range of 2003 to 2023
test2 <- all(data$YearOfDeath >= 2003 & data$YearOfDeath <= 2023)
print(paste("Test 2 - Year of Death within 2003-2023:", test2))

# Test 3: Check if the hospital ID is a positive integer
test3 <- all(data$HospitalID == as.integer(data$HospitalID) & data$HospitalID > 0)
print(paste("Test 3 - Hospital ID is positive integer:", test3))

# Test 4: Check if the hospital ID is within the range of 1 to 5
test4 <- all(data$HospitalID >= 1 & data$HospitalID <= 5)
print(paste("Test 4 - Hospital ID within 1-5:", test4))

# Test 5: Check if the death count is numeric
test5 <- all(data$DeathCount == as.numeric(data$DeathCount))
print(paste("Test 5 - Death Count is integer:", test5))

# Test 6: Check if the death count is an intager
test9 <- all(data$DeathCount %% 1 == 0)
print(paste("Test 9 - DeathCount is an integer:", test9))

# Test 7: Check if the death count is non-negative
test6 <- all(data$DeathCount >= 0)
print(paste("Test 6 - Death Count is non-negative:", test6))

# Test 8: Check if AgeAtDeath categories are correct
valid_ages <- c("below 30", "30-40", "40-50", "50-60", "60-70", "70-80", "above 80")
test7 <- all(data$AgeAtDeath %in% valid_ages)
print(paste("Test 7 - AgeAtDeath categories are valid:", test7))

# Test 9: Check if CancerType categories are correct
valid_types <- c("Breast", "Prostate", "Lung", "Colorectal")
test8 <- all(data$CancerType %in% valid_types)
print(paste("Test 8 - CancerType categories are valid:", test8))

# Test 10: Check if there are no missing values in the data
test10 <- all(complete.cases(data))
print(paste("Test 10 - No missing values in the data:", test10))
