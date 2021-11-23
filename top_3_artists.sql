-- Provide a query that shows the top 3 best selling artists.

SELECT A.Name as Artist,
count(IL.InvoiceLineId) as TotalSales
FROM Artist A
JOIN Album Al
on A.ArtistId = Al.ArtistId
JOIN Track T
on Al.AlbumId = T.AlbumId
JOIN InvoiceLine IL
on T.TrackId = IL.TrackId
GROUP BY Artist
ORDER BY TotalSales DESC
LIMIT 3;