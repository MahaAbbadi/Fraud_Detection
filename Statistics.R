View(fraud_cleaned)

#Statistics for 'amount'
amount_mean <- mean(fraud_cleaned$amount, na.rm = TRUE)
amount_trimmed_mean <- mean(fraud_cleaned$amount, trim = 0.05, na.rm = TRUE)
amount_median <- median(fraud_cleaned$amount, na.rm = TRUE)
amount_variance <- var(fraud_cleaned$amount, na.rm = TRUE)
amount_sd <- sd(fraud_cleaned$amount, na.rm = TRUE)

#Printing results for 'amount'
cat("Transaction Amount Statistics:\n")
#Transaction Amount Statistics:
cat("Mean:", amount_mean, "\n")
#Mean: 105766.1 
cat("Trimmed Mean (5%):", amount_trimmed_mean, "\n")
#Trimmed Mean (5%): 94076.08 
cat("Median:", amount_median, "\n")
#Median: 49207.94 
cat("Variance:", amount_variance, "\n")
#Variance: 14487947251 
cat("Standard Deviation:", amount_sd, "\n\n")
#Standard Deviation: 120365.9 

#Statistics for 'oldbalanceOrg'
balance_mean <- mean(fraud_cleaned$oldbalanceOrg, na.rm = TRUE)
balance_trimmed_mean <- mean(fraud_cleaned$oldbalanceOrg, trim = 0.05, na.rm = TRUE)
balance_median <- median(fraud_cleaned$oldbalanceOrg, na.rm = TRUE)
balance_variance <- var(fraud_cleaned$oldbalanceOrg, na.rm = TRUE)
balance_sd <- sd(fraud_cleaned$oldbalanceOrg, na.rm = TRUE)

#Printing results for 'oldbalanceOrg'
cat("Original Balance Statistics:\n")
#Original Balance Statistics:
cat("Mean:", balance_mean, "\n")
#Mean: 31075.37 
cat("Trimmed Mean (5%):", balance_trimmed_mean, "\n")
#Trimmed Mean (5%): 22916.25
cat("Median:", balance_median, "\n")
#Median: 5023 
cat("Variance:", balance_variance, "\n")
#Variance: 2870271241 
cat("Standard Deviation:", balance_sd, "\n")
#Standard Deviation: 53574.91

#Statistics for 'newbalanceOrig'
new_balance_mean <- mean(fraud_cleaned$newbalanceOrig, na.rm = TRUE)
new_balance_trimmed_mean <- mean(fraud_cleaned$newbalanceOrig, trim = 0.05, na.rm = TRUE)
new_balance_median <- median(fraud_cleaned$newbalanceOrig, na.rm = TRUE)
new_balance_variance <- var(fraud_cleaned$newbalanceOrig, na.rm = TRUE)
new_balance_sd <- sd(fraud_cleaned$newbalanceOrig, na.rm = TRUE)

#Printing results for 'newbalanceOrig'
cat("New Balance (After Transaction) Statistics:\n")
#New Balance (After Transaction) Statistics:
cat("Mean:", new_balance_mean, "\n")
#Mean: 37927.58
cat("Trimmed Mean (5%):", new_balance_trimmed_mean, "\n")
#Trimmed Mean (5%): 23560.79 
cat("Median:", new_balance_median, "\n")
#Median: 0 
cat("Variance:", new_balance_variance, "\n")
#Variance: 7335461220 
cat("Standard Deviation:", new_balance_sd, "\n")
#Standard Deviation: 85647.31 



