#Cleaning my dataset

View(fraud)

# Function to remove outliers using IQR method
remove_outliers <- function(x, na.rm = TRUE, ...) {
  qnt <- quantile(x, probs=c(.25, .75), na.rm = na.rm, ...)
  H <- 1.5 * IQR(x, na.rm = na.rm)
  y <- x
  y[x < (qnt[1] - H)] <- NA
  y[x > (qnt[2] + H)] <- NA
  y
}

# Remove outliers from 'amount' and 'oldbalanceOrg'
fraud_cleaned <- fraud
fraud_cleaned$amount <- remove_outliers(fraud_cleaned$amount)
fraud_cleaned$oldbalanceOrg <- remove_outliers(fraud_cleaned$oldbalanceOrg)

# Function to cap values at a specified threshold
cap_values <- function(x, threshold) {
  pmin(x, threshold)}

# Cap 'oldbalanceOrg' and 'amount' at 1,000,000
fraud_cleaned$oldbalanceOrg <- cap_values(fraud_cleaned$oldbalanceOrg, 1000000)
fraud_cleaned$amount <- cap_values(fraud_cleaned$amount, 1000000)

# Remove rows with NA values if any exist
fraud_cleaned <- na.omit(fraud_cleaned)

options(scipen = 999)

# Replot histograms with cleaned data
hist(fraud_cleaned$oldbalanceOrg,
     main = "Original Balance Before Transaction (Cleaned)",
     xlab = "Original Balance",
     breaks = 50)

hist(fraud_cleaned$amount,
     main = "Transaction Amounts (Cleaned)",
     xlab = "Amount",
     breaks = 50)

