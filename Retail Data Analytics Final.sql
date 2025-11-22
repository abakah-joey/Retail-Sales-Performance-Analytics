Select * From customers_data;
Select * From products_data;
SELECT * FROM retail_analytics.`sales_data (1)`;

Alter table customers_data 
Change `ï»¿CustomerID` `CustomerID` varchar(10);

Alter table products_data
Change `ï»¿ProductID` `ProductID` varchar(10);


Select count(CustomerID) as totalcustomer
From customers_data;

Select count(*) as totalproduct
From products_data;

Select count(*) as numbersales
From  retail_analytics.`sales_data (1)`;

Select sum(Quantity*UnitPrice) totalsales
From  retail_analytics.`sales_data (1)`;

Select CustomerID, sum(Quantity*UnitPrice) as totalsales
From  retail_analytics.`sales_data (1)`
group by CustomerID
Order by totalsales desc;

Select ProductID, sum(Quantity*UnitPrice) as totalsales
From  retail_analytics.`sales_data (1)`
group by ProductID
Order by totalsales desc;

select s.OrderID, s.Date, s.Region, s.Quantity, s.UnitPrice, s.Discount, c.CustomerName, c.Gender, c.Age, c.Country, c.LoyaltyStatus, p.ProductName, p.Category, p.Subcategory, p.Supplier, p.Cost, ROUND(s.Quantity*s.UnitPrice,2) AS GrossAmount
from `sales_data (1)` s 
join products_data p ON s.ProductID = p.ProductID
left join customers_data c ON s.CustomerID = c.CustomerID
order by s.Date desc
limit 50;

SELECT DATE_FORMAT(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m') AS ym,
SUM(Quantity * UnitPrice) AS revenue
FROM `sales_data (1)`
GROUP BY ym
ORDER BY ym;

SELECT s.CustomerID,
COUNT(DISTINCT s.OrderID) AS orders_count,
SUM(s.Quantity * s.UnitPrice) AS total_spend
FROM `sales_data (1)` s
GROUP BY s.CustomerID
ORDER BY total_spend DESC
LIMIT 20;

SELECT p.ProductID, p.ProductName,
SUM(s.Quantity) AS units_sold,
SUM(s.Quantity * s.UnitPrice) AS revenue,
ROUND(AVG(s.UnitPrice), 2) AS avg_unit_price
FROM `sales_data (1)` s
JOIN products_data p ON s.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY revenue DESC;

SELECT c.CustomerID, c.CustomerName
FROM customers_data c
LEFT JOIN `sales_data (1)` s ON c.CustomerID = s.CustomerID
WHERE s.CustomerID IS NULL;

