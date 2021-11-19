-- Provide a query that shows the most purchased track of 2013.

SELECT T.Name as TrackName,
sum(IL.UnitPrice * IL.Quantity) as TotalSales,
I.InvoiceDate
FROM Track T
JOIN InvoiceLine IL
on T.TrackId = IL.TrackId
JOIN Invoice I
ON IL.InvoiceId = I.InvoiceId
WHERE strftime('%Y', I.InvoiceDate) = "2013"
GROUP BY TrackName
ORDER BY TotalSales DESC
LIMIT 1;

WITH CTE_TotalSales as
(SELECT T.Name as TrackName,
sum(IL.UnitPrice * IL.Quantity) as TotalSales,
I.InvoiceDate as InvoiceDate
FROM Track T
JOIN InvoiceLine IL
on T.TrackId = IL.TrackId
JOIN Invoice I
ON IL.InvoiceId = I.InvoiceId
WHERE strftime('%Y', I.InvoiceDate) = "2013"
GROUP BY TrackName
ORDER BY TotalSales DESC)
SELECT TrackName, InvoiceDate,
CASE WHEN TotalSales = max(TotalSales) Then TotalSales
End As TotalSales
FROM CTE_TotalSales;