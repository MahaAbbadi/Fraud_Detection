View(fraud)
# Bar plot for 'type' column
barplot(table(fraud$type), main = "Transaction Types", xlab = "Type", ylab = "Frequency")
# Bar plot for 'isFraud' column
options(scipen=999) #removes scientific notation from the plot
barplot(table(fraud$isFraud), main = "Fraud vs Non-Fraud Transactions", xlab = "Is Fraud", ylab = "Frequency")
# Histogram for 'amount' column
hist(fraud$amount, main = "Transaction Amounts", xlab = "Amount", breaks = 50)
# Histogram for 'oldbalanceOrg' column
hist(fraud$oldbalanceOrg, main = "Original Balance Before Transaction", xlab = "Original Balance", breaks = 50)



