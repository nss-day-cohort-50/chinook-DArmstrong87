-- Provide a query that shows total sales made by each sales agent.

SELECT
E.FirstName || " " || E.LastName as SalesAgent,
round(SUM(I.Total), 2) as TotalSales
FROM Employee E
JOIN Customer C
on C.SupportRepId = E.EmployeeId
JOIN Invoice I
on I.CustomerId = C.CustomerId
GROUP BY SalesAgent;

SELECT Employee.FirstName, Employee.LastName, COUNT(Invoice.CustomerId) AS TotalSAles
FROM Customer
    Left JOIN Employee
      ON Customer.SupportRepId = Employee.EmployeeId
     Left JOIN Invoice
      ON Invoice.CustomerId = Customer.CustomerId
    GROUP BY Employee.EmployeeId

    select (e.FirstName ||' '|| e.LastName) as employee_name, sum(total) as total_sales
from Employee e
    join Customer c
        on e.EmployeeId = c.supportRepId
    join Invoice i
        on i.customerId = c.customerId
group by employee_name