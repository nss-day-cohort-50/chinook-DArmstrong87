-- Provide a query showing only the Employees who are Sales Agents

SELECT *
FROM Employee
WHERE Title like "%sales%";

SELECT *
FROM Employee
WHERE Title is "Sales Support Agent";