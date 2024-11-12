View(fraud_cleaned)

# 95% Confidence Interval for 'amount'
amount_mean <- mean(fraud_cleaned$amount, na.rm = TRUE)
amount_sd <- sd(fraud_cleaned$amount, na.rm = TRUE)
amount_n <- sum(!is.na(fraud_cleaned$amount))
amount_error <- 1.96 * (amount_sd / sqrt(amount_n))
cat("95% Confidence Interval for 'amount':", amount_mean - amount_error, "to", amount_mean + amount_error, "\n")

#95% Confidence Interval for 'amount': 105660 to 105872.2 

# 95% Confidence Interval for 'oldbalanceOrg'
oldbalanceOrg_mean <- mean(fraud_cleaned$oldbalanceOrg, na.rm = TRUE)
oldbalanceOrg_sd <- sd(fraud_cleaned$oldbalanceOrg, na.rm = TRUE)
oldbalanceOrg_n <- sum(!is.na(fraud_cleaned$oldbalanceOrg))
oldbalanceOrg_error <- 1.96 * (oldbalanceOrg_sd / sqrt(oldbalanceOrg_n))
cat("95% Confidence Interval for 'oldbalanceOrg':", oldbalanceOrg_mean - oldbalanceOrg_error, "to", oldbalanceOrg_mean + oldbalanceOrg_error, "\n")

#95% Confidence Interval for 'oldbalanceOrg': 31028.14 to 31122.6 

# 95% Confidence Interval for 'newbalanceOrig'
newbalanceOrig_mean <- mean(fraud_cleaned$newbalanceOrig, na.rm = TRUE)
newbalanceOrig_sd <- sd(fraud_cleaned$newbalanceOrig, na.rm = TRUE)
newbalanceOrig_n <- sum(!is.na(fraud_cleaned$newbalanceOrig))
newbalanceOrig_error <- 1.96 * (newbalanceOrig_sd / sqrt(newbalanceOrig_n))
cat("95% Confidence Interval for 'newbalanceOrig':", newbalanceOrig_mean - newbalanceOrig_error, "to", newbalanceOrig_mean + newbalanceOrig_error, "\n")

#95% Confidence Interval for 'newbalanceOrig': 37852.07 to 38003.08 