#Hypothesis Testing

View(fraud_cleaned)

#Hypothesis 1
library(dplyr)

# Subset the data for fraudulent and non-fraudulent transactions
fraudulent <- fraud_cleaned %>% filter(isFraud == 1) %>% select(amount)
non_fraudulent <- fraud_cleaned %>% filter(isFraud == 0) %>% select(amount)

mean_fraudulent <- mean(fraudulent$amount)
mean_non_fraudulent <- mean(non_fraudulent$amount)
sd_fraudulent <- sd(fraudulent$amount)
sd_non_fraudulent <- sd(non_fraudulent$amount)

n_fraudulent <- nrow(fraudulent)
n_non_fraudulent <- nrow(non_fraudulent)

z_statistic <- (mean_fraudulent - mean_non_fraudulent) /
sqrt((sd_fraudulent^2 / n_fraudulent) + (sd_non_fraudulent^2 / n_non_fraudulent))

alpha <- 0.05

# The critical z-value for a two-tailed test
z_critical <- qnorm(1 - alpha / 2)

# P-value for the z-test
p_value <- 2 * (1 - pnorm(abs(z_statistic)))

cat("Z-Statistic:", z_statistic, "\n")
#Z-Statistic: -0.4897491 

cat("Critical Z-Value (Two-Tailed, Alpha = 0.05):", z_critical, "\n")
#Critical Z-Value (Two-Tailed, Alpha = 0.05): 1.959964 

cat("P-Value:", p_value, "\n")
#P-Value: 0.6243114 


#We fail to reject the null hypothesis (H0): No significant difference in transaction amounts.
#The P-value is greater than the significance level and the z statistic is less than the critical value. 


#Hypothesis 2
# Calculate balance change for each transaction
fraud_cleaned <- fraud_cleaned %>%
   mutate(balance_change = abs(newbalanceOrig - oldbalanceOrg))

# Subset the data for fraudulent and non-fraudulent transactions
fraudulent_balance <- fraud_cleaned %>% 
  filter(isFraud == 1) %>% 
  select(balance_change)

non_fraudulent_balance <- fraud_cleaned %>% 
  filter(isFraud == 0) %>% 
  select(balance_change)

# Calculate descriptive statistics
mean_fraudulent <- mean(fraudulent_balance$balance_change)
mean_non_fraudulent <- mean(non_fraudulent_balance$balance_change)
sd_fraudulent <- sd(fraudulent_balance$balance_change)
sd_non_fraudulent <- sd(non_fraudulent_balance$balance_change)
n_fraudulent <- nrow(fraudulent_balance)
n_non_fraudulent <- nrow(non_fraudulent_balance)


# Calculate z-statistic
z_statistic <- (mean_fraudulent - mean_non_fraudulent) / 
  sqrt((sd_fraudulent^2 / n_fraudulent) + (sd_non_fraudulent^2 / n_non_fraudulent))
# Set significance level
alpha <- 0.05
# Calculate critical z-value for two-tailed test
z_critical <- qnorm(1 - alpha / 2)
# Calculate p-value
p_value <- 2 * (1 - pnorm(abs(z_statistic)))

cat("Mean Balance Change (Fraudulent):", mean_fraudulent, "\n")
#Mean Balance Change (Fraudulent): 103702.8 

cat("Mean Balance Change (Non-Fraudulent):", mean_non_fraudulent, "\n")
#Mean Balance Change (Non-Fraudulent): 30315.49 

cat("Z-Statistic:", z_statistic, "\n")
#Z-Statistic: 54.56594 

cat("Critical Z-Value (Two-Tailed, Alpha = 0.05):", z_critical, "\n")
#Critical Z-Value (Two-Tailed, Alpha = 0.05): 1.959964 

cat("P-Value:", p_value, "\n")
#P-Value: 0


#Reject the null hypothesis (H0): There is a significant difference in balance changes.