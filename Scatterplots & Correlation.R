View(fraud_cleaned)
# Scatterplot between 'amount' and 'oldbalanceOrg'

# Scatterplot between 'oldbalanceOrg' and 'newbalanceOrig'
plot(fraud_cleaned$oldbalanceOrg, fraud_cleaned$newbalanceOrig,
xlab = "Original Balance",
ylab = "New Balance",
main = "Scatterplot of Original Balance vs New Balance")
abline(lm(fraud_cleaned$newbalanceOrig ~ fraud_cleaned$oldbalanceOrg), col = "red")

# Correlation
cor.test(fraud_cleaned$oldbalanceOrg, fraud_cleaned$newbalanceOrig)

#data:  fraud_cleaned$oldbalanceOrg and fraud_cleaned$newbalanceOrig
#t = 1331.6, df = 4942899, p-value < 0.00000000000000022
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:
#  0.5131879 0.5144855
#sample estimates:
#  cor 
#0.513837 

