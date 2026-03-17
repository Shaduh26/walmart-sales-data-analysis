# walmart-sales-data-analysis

# Project Overview
This project analyzes Walmart's weekly sales data using SQL and Tableau. 
The goal was to clean the dataset, answer business questions, and build 
visualizations that explain sales trends, holiday effects, store performance, 
fuel price relationships, and unemployment differences across locations.

# Dataset 
- The dataset includes the following variables
- Store ID
- Weekly sales
- Holiday Flag
- Temperature
- Fuel price
- CPI
- Unemployment
- Date

# Business Questions 
- Which holidays affect weekly sales the most?
- Which stores in the dataset have the lowest and highest unemployment rates?
- What factors do you think are impacting the unemployment rate?
- Is there any correlation between CPI and Weekly Sales?
- How does the correlation differ when the Holiday Flag is 0 versus when the Holiday Flag is 1?
- Why do you think the fuel price is included in this dataset?
- What conclusions can be made about Fuel Price compared to any of the other fields?

# Tools Used
- SQL (Data cleaning and Analysis)
- Tableau (Data Visualization)
- GitHub


# Data Cleaning 
The dataset was cleaned in SQL by:
- sorting data by store and date
- Data Consistency
- Rounding numeric columns such as weekly sales, Temperature,  fuel price, unemployment, and CPI.
- checking for missing  values


  
# Key findings
- Holiday weeks show higher average weekly sales than non-holiday weeks.
- Store performance varies  across store locations.
- Fuel price shows little relationship with weekly sales.
- Sales remain relatively the same throughout the year, with some seasonal variation.
- Unemployment rates differ across stores.

# Analysis Insights
# Holiday Impact on Sales
- Holiday weeks have a Higher average sales compared to non-holiday weeks.
- This indicates that customers tend to send more money during the holidays compared to non-holidays.
# Unemployment Differences Among Stores
- Store 12 has the highest unemployment rate, with the average being (13.116), while Store 23 has the lowest unemployment rate, with the average being (4.796).

# Correlation between CPI and weekly sales
- The correlation between CPI and weekly_sales is (-0.0726). which is also a very weak negative relationship. This confirms that CPI does not significantly impact sales.

# Correlation between Non-holidays and Holidays
- The correlation between holidays and non-holidays is (-0.0719), which is also a very weak negative relationship. This confirms that CPI does not affect weekly sales regardless of whether it's a holiday or a non-holiday.

# Why is fuel price included in the dataset?
- Fuel prices are included in the dataset because they may influence customer spending behavior and transportation costs. Higher fuel prices can reduce customer visits to the store, hence leading to fewer sales. However, the analysis indicates that fuel prices have a weak relationship with weekly sales.

# Tableau Dashboard
[Tableau Dashboard] (https://public.tableau.com/app/profile/shaduh.nakijoba/vizzes)

# Visualization
The following charts and dashboards were created using Tableau:
- Walmart Sales Dashboard
- Monthly weekly sales
- Fuel Vs weekly sales
- Average unemployment rates
- Holiday vs Non-Holiday
- Weekly sales by store

# Skills Demonstrated 
- Data cleaning using SQL
- Business Analysis
- Data Aggregation
- Data Visualization

# Visualization

# Walmart Dashboard
<p align="center">
<img src="images/Walmart Dashboard.png" width="700">
</p>

# Fuel vs Weekly Sales
<p align="center">
<img src="images/Fuel Vs weekly sales.png" width="600">
</p>

# Holiday vs Non-Holiday Sales
<p align="center">
<img src="images/holiday VS Non holiday.png" width="600">
</p>

# Weekly Sales Trend
<p align="center">
<img src="images/weekly sales.png" width="600">
</p>

# Average Unemployment Rate
<p align="center">
<img src="images/AVG unemployment.png" width="600">
</p>

  # Project Layout
images/ – Tableau charts and dashboard screenshots  
sql/ – SQL scripts for data cleaning and analysis  
README.md – Project documentation
