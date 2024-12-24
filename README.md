# Marketing Mix Model Analysis

# Overview
This repository contains an R script for analyzing marketing mix data to understand the impact of various marketing channels on sales performance. The project involves data preprocessing, feature engineering, correlation analysis, and regression modeling to derive actionable insights for marketing strategies.

# Dataset
- The analysis uses a marketing mix dataset with the following key features:
 - quantity: Sales quantity (dependent variable).
 - price: Product pricing.
 - digital_ad: Digital advertising spend.
 - digital_search: Spend on digital search marketing.
 - print: Spend on print media.
 - tv: Spend on television advertising.
 - date: Date of the observation.

# Key Features of the Analysis
- Feature Engineering:
 - Log transformations for normalization.
 - Creation of lag variables for time-based analysis.
 - Day-of-the-week extraction for temporal trends.

# Correlation Analysis:
 - Calculates relationships between key features to identify multicollinearity.

# Regression Modeling:
 - Builds a linear regression model to quantify the impact of marketing channels.
 - Evaluates model performance with statistical metrics.

# Prediction:
 - Predicts future sales based on the model.
 - Outputs results to a CSV file for further analysis.

# View the results:
 - Predictions are saved in mmix_predicted.csv.

# Results
 - Model Insights: The regression model identifies the most impactful marketing channels.
 - Predicted Sales: Forecasted sales quantities for each observation.

# Tableau Workbooks-
![image](https://github.com/user-attachments/assets/781dd38b-2884-4457-8efa-6257b7362097)
![image](https://github.com/user-attachments/assets/7e3d1a61-8792-43b8-a3b5-83938054adad)
![image](https://github.com/user-attachments/assets/2440ed3d-b9eb-45d6-8e90-a637354ebb1c)

