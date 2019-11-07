-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, c.CategoryName 
FROM Products as p
JOIN Categories as c
ON p.CategoryID = c.CategoryID

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.OrderID, s.ShipperName
FROM Orders as o
JOIN Shippers as s
ON o.ShipperID = s.ShipperID
WHERE OrderDate < "1997-01-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, o.Quantity
FROM Products as p
JOIN OrderDetails as o
ON p.ProductID = o.ProductID
WHERE OrderID = "10251"
ORDER BY ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.OrderId as [Order], c.CustomerName as Customer, e.LastName as Employee
FROM Orders as o
JOIN Customers as c
ON o.CustomerID = c.CustomerID
JOIN Employees as e
ON o.EmployeeID = e.EmployeeID

-- (Stretch) Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 9 records.

SELECT c.CategoryName, COUNT(*) as Count
FROM Products as p
JOIN Categories as c
ON p.CategoryID = c.CategoryID
GROUP BY p.CategoryID

-- (Stretch) Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.

SELECT o.OrderID, COUNT(*) as ItemCount
FROM OrderDetails as o
GROUP BY OrderID