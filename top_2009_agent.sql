-- Which sales agent made the most in sales in 2009? Hint: Use the MAX function on a subquery.

WITH CTE_SalesAgent as (
SELECT E.FirstName || " " || E.LastName as SalesAgent,
sum(I.Total) as Total
FROM Employee E
JOIN Customer C
on C.SupportRepId = E.EmployeeId
JOIN Invoice I
on I.CustomerId = C.CustomerId
WHERE strftime('%Y',I.InvoiceDate) = "2009"
GROUP BY SalesAgent
)
Select SalesAgent, max(Total)
FROM CTE_SalesAgent;