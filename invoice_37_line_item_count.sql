-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT 
Count(L.InvoiceLineId) as LineItemCount
FROM InvoiceLine L
JOIN Invoice I
on I.InvoiceId = L.InvoiceId
WHERE I.InvoiceId = 37;