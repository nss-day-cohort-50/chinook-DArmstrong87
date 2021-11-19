-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT
I.InvoiceId,
COUNT(LI.InvoiceLineId) as LineItems
FROM Invoice I
JOIN InvoiceLine LI
on LI.InvoiceId = I.InvoiceId
GROUP BY I.InvoiceId;