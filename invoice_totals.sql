-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT
I.Total,
C.FirstName || " " || C.LastName as Customer,
I.BillingCountry,
E.FirstName || " " || E.LastName as Employee
FROM Invoice I
JOIN Customer C
on C.CustomerId = I.CustomerId
JOIN Employee E
on C.SupportRepId = E.EmployeeId;