# Walmart Sales

-- Checking for any Null values in the columns
SELECT *
FROM walmart_sales.walmart_sales
WHERE store IS NULL
   OR Date IS NULL
   OR Weekly_Sales IS NULL
   OR Holiday_Flag IS NULL
   OR Temperature IS NULL
   OR Fuel_Price IS NULL
   OR CPI IS NULL
   OR Unemployment IS NULL;

# sort data first by store number ASC and second by date ASC
SELECT *
FROM walmart_sales.walmart_sales
ORDER BY store ASC, date ASC;

# Change the date Format to MM-DD-yyy
SELECT 
  `Date` AS original_date,
  DATE_FORMAT(STR_TO_DATE(`Date`, '%d-%m-%Y'), '%m-%d-%Y') AS formatted_date
FROM walmart_sales.walmart_sales;
-- Updating to a new date format 
ALTER TABLE walmart_sales.walmart_sales
ADD COLUMN clean_date DATE;
-- update
UPDATE walmart_sales.walmart_sales
SET clean_date = STR_TO_DATE(`Date`, '%d-%m-%Y');
-- Clean the table 
ALTER TABLE walmart_sales.walmart_sales
DROP COLUMN `Date`;

ALTER TABLE walmart_sales.walmart_sales
CHANGE clean_date `Date` DATE;

# Round weekly sales to the nearest 2 decimals
SELECT store, `date`, ROUND(weekly_sales, 2) AS Weekly_sales
FROM walmart_sales.walmart_sales;
-- Update weekly sales column
UPDATE walmart_sales.walmart_sales
SET weekly_sales = ROUND(weekly_sales, 2);

# Temperature is rounded to the nearest whole number 
SELECT temperature , ROUND(temperature) AS New_Temp
FROM walmart_sales.walmart_sales;
-- Update the table
UPDATE walmart_sales.walmart_sales
SET temperature = ROUND(temperature);


# Round fuel price to the nearest 2 decimals 
SELECT fuel_Price, ROUND(fuel_Price, 2) AS New_Price
FROM walmart_sales.walmart_sales;
-- Update the table
UPDATE walmart_sales.walmart_sales
SET fuel_price = ROUND(fuel_price, 2);

# Round CPI to the nearest 3 decimal places
SELECT CPI, ROUND(CPI, 3) AS New_CPI
FROM walmart_sales.walmart_sales;
-- Update the table
UPDATE walmart_sales.walmart_sales
SET CPI = ROUND(CPI, 3);

# Round Unemployment to the nearest 3 decimal places
SELECT Unemployment, ROUND(Unemployment, 3) AS New_Unemployment_Rates
FROM walmart_sales.walmart_sales;
-- Update the table
UPDATE walmart_sales.walmart_sales
SET Unemployment = ROUND(Unemployment, 3);

-- Verifying to check if all steps were completed.
SELECT *
FROM walmart_sales.walmart_sales
LIMIT 100;
