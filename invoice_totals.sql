-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT
I.Total as InvoiceTotal,
C.FirstName || " " || C.LastName as CustomerName,
I.BillingCountry,
E.FirstName || " " || E.LastName as SalesAgentName
FROM Invoice I
JOIN Customer C
on C.CustomerId = I.CustomerId
JOIN Employee E
on C.SupportRepId = E.EmployeeId;