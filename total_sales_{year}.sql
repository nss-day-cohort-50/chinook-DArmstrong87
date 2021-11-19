-- What are the respective total sales for each of those years?

SELECT Distinct
strftime('%Y', InvoiceDate) as Year,
sum(total) as InvoiceCount
FROM Invoice
GROUP BY Year;

SELECT Distinct
strftime('%Y', InvoiceDate) as Year,
sum(total) as InvoiceCount
FROM Invoice
WHERE Year = "2009" or  Year = "2011"
GROUP BY Year;