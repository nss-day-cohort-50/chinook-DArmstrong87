-- Provide a query that shows the top 5 most purchased tracks over all.


SELECT T.Name as TrackName,
sum(IL.UnitPrice * IL.Quantity)*count(*) as TotalSales
FROM Track T
JOIN InvoiceLine IL
on T.TrackId = IL.TrackId
GROUP BY TrackName
ORDER BY TotalSales DESC
LIMIT 5;