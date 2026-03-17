# Analysis 
  
# Holidays that affected weekly sales the most
SELECT 
    Holiday_Flag,
    ROUND(AVG(Weekly_Sales), 2) AS avg_weekly_sales,
    ROUND(SUM(Weekly_Sales), 2) AS total_sales,
    COUNT(*) AS number_of_weeks
FROM walmart_sales.walmart_sales
GROUP BY Holiday_Flag;
-- insight:
-- Holiday weeks have a Higher average sales compared to non-holiday weeks.
-- This shows that customers tend to send more money during the holidays compared to non-holidays.

# Stores with the lowest and highest unemployment rates
-- Highest unemployment
SELECT store, 
ROUND( AVG(unemployment), 3) AS avg_Unemployment
FROM walmart_sales.walmart_sales
GROUP BY store
ORDER BY avg_unemployment DESC
LIMIT 1;


-- Lowest unemployment
SELECT 
    Store,
    ROUND(AVG(Unemployment), 3) AS avg_unemployment
FROM walmart_sales.walmart_sales
GROUP BY Store
ORDER BY avg_unemployment ASC
LIMIT 1;
-- Insights:
-- Store 12 has the highest unemployment rate, with the average being 13.116
-- Store 23 has the lowest unemployment rights, with the average being 4.796
-- Different regions may influence differences in unemployment 
-- Other factors like economic conditions, fuel prices, and CPI may affect the store's performance overall.

# correlation between CPI and weekly sales
SELECT
  ROUND((AVG(CPI * Weekly_Sales) - (AVG(CPI) * AVG(Weekly_Sales))) /
    (SQRT(AVG(CPI * CPI) - (AVG(CPI) * AVG(CPI))) *
      SQRT(AVG(Weekly_Sales * Weekly_Sales) - (AVG(Weekly_Sales) * AVG(Weekly_Sales)))
    ),4) AS corr_cpi_weekly_sales
FROM walmart_sales.walmart_sales;
-- Insights:
-- The correlation between CPI and weekly_sales is -0.0726
-- This indicates that there is a very weak negative relationship
-- This shows that CPI does not significantly impact weekly sales

# Correlation between Non-holidays and Holidays
SELECT
  ROUND((AVG(CPI * Weekly_Sales) - (AVG(CPI) * AVG(Weekly_Sales))) /
    (SQRT(AVG(CPI * CPI) - (AVG(CPI) * AVG(CPI))) *
      SQRT(AVG(Weekly_Sales * Weekly_Sales) - (AVG(Weekly_Sales) * AVG(Weekly_Sales)))
    ),4) AS corr_non_holiday
FROM walmart_sales.walmart_sales
WHERE Holiday_Flag = 0;
-- Insights:
-- The correlation between holidays and non-holidays is -0.0719
-- This shows a very weak negative relationship 
-- CPI does not affect weekly sales regardless of whether it's a holiday or a non-holiday

# Why is fuel price included in the dataset?
-- Insights:
-- Fuel prices are included in the dataset because they may influence store performance
-- Higher fuel prices can reduce customer visits to the store, hence leading to fewer sales
-- Increased fuel prices may affect transportation and supply of products, which affects product prices. 
-- However, correlation analysis shows that fuel prices have a weak relationship with weekly sales.




