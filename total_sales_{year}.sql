-- What are the respective total sales for each of those years?

SELECT Distinct
strftime('%Y', InvoiceDate) as Year,
count(InvoiceId) as InvoiceCount
FROM Invoice
GROUP BY Year;