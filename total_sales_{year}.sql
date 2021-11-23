-- What are the respective total sales for each of those years?

SELECT Distinct
strftime('%Y', InvoiceDate) as Year,
round(sum(total),2) as TotalSales
FROM Invoice
WHERE Year = "2009" or  Year = "2011"
GROUP BY Year;