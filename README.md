# Read Me: Body Fat Analysis 

##  Description
This script analyzes the relationship between body fat percentage and abdomen size using statistical methods and visualizations.

## Requirements

R packages: readxl, car

## Setup

Install the necessary packages:
install.packages("readxl")
install.packages("car")

### Load the required libraries:

library(readxl)
library(car)

### Load the data from BodyFatData.xlsx:

data <- read_excel("BodyFatData.xlsx")

## Key Steps

#### Data Visualization: Create histograms and box plots to visualize body fat and abdomen size distributions.

#### Summary Statistics: Calculate mean, median, and standard deviation for body fat and abdomen size.

#### Correlation and Regression: Check the correlation and fit a linear regression model between body fat and abdomen size.

#### Model Evaluation: Use R-squared, MSE, and RMSE to evaluate the model's performance.

#### Prediction: Predict body fat for a given abdomen size (e.g., 100 cm).
