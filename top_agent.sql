-- Which sales agent made the most in sales over all?

WITH CTE_TotalSales as
(SELECT E.FirstName || " " || E.LastName as SalesAgent,
Sum(I.Total) as Total
FROM Employee E
JOIN Customer C
on C.SupportRepId = E.EmployeeId
JOIN Invoice I
on I.CustomerId = C.CustomerId
GROUP BY SalesAgent)
SELECT SalesAgent, max(Total) as TotalSales
FROM CTE_TotalSales;

SELECT E.FirstName || " " || E.LastName as SalesAgent,
Sum(I.Total) as Total
FROM Employee E
JOIN Customer C
on C.SupportRepId = E.EmployeeId
JOIN Invoice I
on I.CustomerId = C.CustomerId
GROUP BY SalesAgent
LIMIT 1;