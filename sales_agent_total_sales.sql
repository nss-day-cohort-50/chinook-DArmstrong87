-- Provide a query that shows total sales made by each sales agent.

SELECT
E.FirstName || " " || E.LastName as SalesAgent,
round(SUM(I.Total), 2) as TotalSales
FROM Employee E
JOIN Customer C
on C.SupportRepId = E.EmployeeId
JOIN Invoice I
on I.CustomerId = C.CustomerId
GROUP BY E.FirstName;