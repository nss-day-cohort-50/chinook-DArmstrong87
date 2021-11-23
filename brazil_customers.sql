-- Provide a query only showing the Customers from Brazil.

SELECT FirstName || " " || LastName as FullName FROM Customer
WHERE Country = "Brazil";