-- Which country's customers spent the most?

SELECT I.BillingCountry as Country,
sum(I.Total) as Total
FROM Invoice I
GROUP BY Country
ORDER BY Total DESC
LIMIT 1;

WITH CTE_TotalSalesCountry as
(SELECT I.BillingCountry as Country,
sum(I.Total) as Total
FROM Invoice I
GROUP BY Country
ORDER BY Total DESC)
SELECT Country, max(Total) as TotalSales
FROM CTE_TotalSalesCountry;