
SELECT * from products;


-- Get all the categories in Uppercase

SELECT UPPER(category) AS Catergory_Capital
FROM products;

-- Get all the categories in Lowercase

SELECT LOWER(category) AS Catergory_Capital
FROM products;



-- Join Product_name adn category text with hypen.
SELECT CONCAT(product_name,'-',category) As product_details
FROM products;

-- Extract the first 5 characters from product_name
SELECT SUBSTRING(product_name, 1,5) AS short_name
FROM products;

-- Count length
SELECT product_name, LENGTH(product_name) AS COUNT_OF_CHAR
FROM products;


--Remove leading and trailing spaces from string
 SELECT LENGTH(TRIM('  Monitor    ')) AS Trimmed_Text;
 SELECT LENGTH('  Monitor    ') AS Trimmed_Text;


-- Replace the word "phone" with "device" in product names
SELECT REPLACE(product_name, 'phone','device') AS updated
FROM products;


-- Get the first 3 characters from category

SELECT RIGHT(category, 3) AS Catergory_Capital
FROM products;

