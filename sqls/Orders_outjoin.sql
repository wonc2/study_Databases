SELECT *
	FROM Employees e
    LEFT OUTER JOIN Orders o
    ON e.EmployeeID = o.EmployeeID
    WHERE o.EmployeeID is null
;
