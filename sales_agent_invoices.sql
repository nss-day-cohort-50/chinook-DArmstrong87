-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT
I.InvoiceId,
E.FirstName || " " || E.LastName as SalesAgent
FROM Invoice I
JOIN Customer C
on C.CustomerId = I.CustomerId
JOIN Employee E
on E.EmployeeId = C.SupportRepId;