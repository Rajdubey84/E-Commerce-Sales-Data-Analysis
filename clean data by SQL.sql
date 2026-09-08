SELECT * FROM clean_data
LIMIT 10;

SELECT COUNT(*) FROM clean_data;


ALTER TABLE clean_data
RENAME TO 

SELECT * FROM clean_data;

SELECT "Net_Amount"
FROM clean_data;


--Total orders
SELECT COUNT(*) AS Total_orders FROM clean_data;

--Total sales
SELECT SUM("Net_Amount") AS Total_Sales 
FROM clean_data;



--Top products
SELECT "Product",
       SUM("Net_Amount") AS Total_Sales
FROM clean_data
GROUP BY "Product"
ORDER BY Total_Sales DESC;

-- Top cities
SELECT "City",
       SUM("Net_Amount") AS Total_Sales
FROM clean_data
GROUP BY "City"
ORDER BY Total_Sales DESC;


-- Monthly sales
SELECT "Month",
       SUM("Net_Amount") AS Total_Sales
FROM clean_data
GROUP BY "Month"
ORDER BY Total_Sales DESC;


-- Cancelled orders
SELECT * FROM clean_data
WHERE "Order_Status"='Cancelled';



SELECT * FROM clean_data;


