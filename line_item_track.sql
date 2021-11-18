-- Provide a query that includes the purchased track name with each invoice line item.

SELECT
L.InvoiceLineId,
T.Name as TrackName
FROM InvoiceLine L
JOIN Track T
on T.TrackId = L.TrackId;