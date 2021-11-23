-- How many Invoices were there in 2009 and 2011?

SELECT Distinct
strftime('%Y', InvoiceDate) as Year,
COUNT(InvoiceId) as InvoiceCount
FROM Invoice
WHERE Year = "2009" or Year = "2011"
GROUP BY Year;