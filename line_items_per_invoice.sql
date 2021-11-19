-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT
I.InvoiceId,
COUNT(I.InvoiceId) as LineItemCount
FROM InvoiceLine L
JOIN Invoice I 
on I.InvoiceId = L.InvoiceId
GROUP BY I.InvoiceId;