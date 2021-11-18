-- How many Invoices were there in 2009 and 2011?

SELECT Distinct
strftime('%Y', InvoiceDate) as "Year",
COUNT(InvoiceId) as InvoiceCount
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = "2009" or strftime('%Y', InvoiceDate) = "2011"
GROUP BY "Year";