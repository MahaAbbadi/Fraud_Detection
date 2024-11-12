View(fraud_cleaned)

install.packages("dplyr")
library(dplyr)

# Set a seed for reproducibility
set.seed(123)

# Sample 10,000 data points
fraud_sample <- sample_n(fraud_cleaned, 10000)

# Create linear regression model using the sampled data
fraud_model <- lm(newbalanceOrig ~ amount + oldbalanceOrg, data = fraud_sample)
fraud_model

#Call:
# lm(formula = newbalanceOrig ~ amount + oldbalanceOrg, data = fraud_sample)

#Coefficients:
# (Intercept)         amount  oldbalanceOrg  
#-1613.7926         0.1242         0.8534 

# Predictions with specific values
predict(fraud_model, newdata = data.frame(amount = c(5000, 10000, 15000), oldbalanceOrg = c(20000, 30000, 40000)))


#1        2        3 
#16075.75 25231.03 34386.31 


# Extract the residuals for the fraud_model
residuals_fraud <- resid(fraud_model)

# Histogram of residuals
hist(residuals_fraud,
     main = "Histogram of Residuals for Fraud Model (Sampled Data)",
     xlab = "Residuals",
     breaks = 50)

# Scatter plot of Fitted Values vs Residuals
plot(fitted(fraud_model), residuals_fraud,
     xlab = "Fitted Values",
     ylab = "Residuals",
     main = "Residuals vs Fitted Values (Sampled Data)")
abline(h = 0, col = "red")


# Calculate R-squared
r_squared <- summary(fraud_model)$r.squared
cat("R-squared:", r_squared, "\n")

#R-squared: 0.309773 

# Calculate mean of residuals
mean_residual <- mean(residuals_fraud)
cat("Mean of residuals:", mean_residual, "\n")

#Mean of residuals: -1.284714e-12 