SELECT e.FirstName + " " + e.LastName AS `담당자`, count(orderID) as `주문받은`
FROM Employees e
	LEFT OUTER JOIN Orders o
    ON e.EmployeeID = o.EmployeeID
    GROUP BY e.FirstName, e.LastName, o.EmployeeID
    ORDER BY count(orderID) desc
;
