-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT 
I.InvoiceId,
C.FirstName || " " || C.LastName as FullName,
I.InvoiceDate,
I.BillingCountry
FROM Invoice I
JOIN Customer C
on I.CustomerId = C.CustomerId
WHERE Country = "Brazil";