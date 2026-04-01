
SELECT * from products;


-- 1. NOW() – Get Current Date and Time

SELECT NOW() AS Current_Datetime;


-- 2. CURRENT_DATE() – Get Current Date
SELECT CURRENT_DATE AS today_date;

SELECT Added_date, Current_Date, (CURRENT_DATE- added_date) AS Days_difference
FROM products;


-- 3. EXTRACT() – Extract Parts of a Date
-- Extract the year, month, and day from the added_date column.

SELECT product_name,
		EXTRACT(YEAR FROM added_date) AS Year_Added,
		EXTRACT(MONTH FROM added_date) AS Month_Added,
		EXTRACT(DAY FROM added_date) AS Day_Added
FROM products;





-- 4. AGE() – Calculate Age Between Dates
-- Calculate the time difference between added_date and today’s date.

SELECT product_name,
	AGE(CURRENT_DATE, added_date) AS Age_since_added
FROM products;
  	

-- 5. TO_CHAR() – Format Dates as Strings
-- Format added_date in a custom format (DD-Mon-YYYY).

SELECT product_name,
	TO_CHAR(added_date, 'DD-Mon-YYYY') AS FORMATED_DATE
FROM products;







-- 6. DATE_PART() – Get Specific Date Part
-- Extract the day of the week from added_date.




-- 7. DATE_TRUNC() – Truncate Date to Precision
-- Truncate added_date to the start of the month.







-- 8. INTERVAL – Add or Subtract Time Intervals
-- Add 6 months to the added_date.







-- 9. CURRENT_TIME() – Get Current Time
--Retrieve only the current time.






-- 10. TO_DATE() – Convert String to Date
-- Convert a string to a date format.



