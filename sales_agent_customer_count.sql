-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT
E.FirstName || " " || E.LastName as SalesAgent,
Count(Distinct C.CustomerId) as CustomerCount
FROM Employee E
JOIN Customer C
ON C.SupportRepId = E.EmployeeId
GROUP BY SalesAgent;