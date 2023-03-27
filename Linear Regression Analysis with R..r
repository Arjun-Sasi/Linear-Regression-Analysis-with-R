# Installing  the necessary packages needed for the script 
install.packages("readxl") 
install.packages("car")  
   
# Load all the  required packages 
library(readxl) 
library(car)  
   
# Load the data   
data <- read_excel("BodyFatData.xlsx")  
   
# Examine the structure of the data 
str(data)  
   
# Visualizing the distribution of body fat and abdomen size using histograms 
hist(data$body_fat, main = "Distribution of Body Fat", xlab = "Body Fat (%)")  
hist(data$abdomen_size, main = "Distribution of Abdomen Size", xlab = "Abdomen Size (cm)") 
# Checking  for possible outliers using box plots 
boxplot(data$body_fat, main = "Boxplot of Body Fat") 
boxplot(data$abdomen_size, main = "Boxplot of Abdomen Size")  
   
# Calculating the summary statistics for body fat and abdomen size 
mean_bf <- round(mean(data$body_fat), 3) 
median_bf <- round(median(data$body_fat), 3) 
sd_bf <- round(sd(data$body_fat), 3) 
mean_as <- round(mean(data$abdomen_size), 3) 
median_as <- round(median(data$abdomen_size), 3) 
sd_as <- round(sd(data$abdomen_size), 3)  
   
# Visualizing the relationship between Body fat and Abdomen size using a scatterplot
plot(data$body_fat ~ data$abdomen_size, xlab = "Abdomen size (cm)", ylab = "Body Fat (%)")  
   
# Calculating the Correlation Coefficient  
correlation <- round(cor(data$body_fat, data$abdomen_size), 3)  
   
# Fiting  the Linear regression model opted 
model <- lm(body_fat ~ abdomen_size, data = data)  
   
# Summary by the fitted model summary
(model)  
   
# Checking assumptions made of the linear regression model 
plot(model, which = 1) 
plot(model, which = 2)  
   
# Conducting an Anova test to confirm the significance of the Linear Relationship between body fat and Abdomen size.  
Anova(model)  
   
# Predictiting the condition where  body fat for a male with an abdomen size of 100 cm 
prediction <- round(predict(model, newdata = data.frame(abdomen_size = 100)), 3)  
   
# Evaluating the Predictive Performance of the model 
r.squared <- round(summary(model)$r.squared, 3) 
mse <- round(mean((data$body_fat - fitted(model))^2), 3) 
rmse <- round(sqrt(mse), 3)  
   
summary(r.squared)  
summary(mse)  
summary(rmse)  



