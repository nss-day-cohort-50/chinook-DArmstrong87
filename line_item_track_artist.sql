-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT L.InvoiceLineId,
    T.Name as TrackName,
    A.Name as ArtistName
FROM InvoiceLine L
    JOIN Track T on T.TrackId = L.TrackId
    JOIN Album Al On Al.AlbumId = T.AlbumId
    JOIN Artist A on A.ArtistId = Al.ArtistId;