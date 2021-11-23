-- Provide a query that shows the total sales per country.

SELECT I.BillingCountry as Country,
sum(I.Total) as TotalSales
FROM Invoice I
GROUP BY Country;