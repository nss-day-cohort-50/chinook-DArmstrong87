-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT
BillingCountry,
COUNT(*) as InvoiceCount
FROM Invoice
GROUP BY BillingCountry;