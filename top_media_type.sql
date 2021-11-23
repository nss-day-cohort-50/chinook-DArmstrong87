-- Provide a query that shows the most purchased Media Type.

WITH TotalSalesMediaType as
(SELECT M.Name as MediaType,
sum(IL.UnitPrice * IL.Quantity) as Total
FROM MediaType M
JOIN Track T
ON M.MediaTypeId = T.MediaTypeId
JOIN InvoiceLine IL
ON IL.TrackId = T.TrackId
GROUP BY MediaType
ORDER BY Total DESC)
SELECT MediaType, max(Total) as TotalSales
FROM TotalSalesMediaType;