{\rtf1\ansi\ansicpg1254\deff0\nouicompat\deflang1055{\fonttbl{\f0\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 6.3.9600}\viewkind4\uc1 
\pard\sa200\sl276\slmult1\f0\fs22\lang9\par
SELECT ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate FROM project;\par
SELECT * FROM project;\par
SELECT ProjectName, Department, MaxHours FROM project;\par
SELECT ProjectName, MaxHours, Department FROM project;\par
SELECT Department FROM project;\par
SELECT DISTINCT Department FROM project;\par
SELECT * FROM project WHERE Department = 'Finance';\par
SELECT * FROM project WHERE StartDate = '2017-05-10';\par
SELECT * FROM project WHERE MaxHours > 135;\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee WHERE Department = 'accounting';\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee ORDER BY Department;\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee ORDER BY Department DESC;\par
SELECT FirstName, LastName, Department OfficePhone FROM employee ORDER BY Department DESC, LastName ASC;\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee WHERE Department = 'accounting' AND OfficePhone = '360-285-8430';\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee WHERE Department = 'accounting' OR OfficePhone = '360-285-8410';\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee WHERE Department = 'accounting' AND NOT OfficePhone = '360-285-8430';\par
SELECT FirstName, LastName, Department, OfficePhone FROM Employee WHERE Department IN ('Administration', 'Finance', 'Accounting');\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee WHERE Department NOT IN ('Administration', 'Finance', 'Accounting');\par
SELECT firstname, lastname, department, officephone FROM employee WHERE employeenumber >= 2 AND employeenumber <=5;\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee WHERE EmployeeNumber BETWEEN 2 AND 5;\par
SELECT * FROM project WHERE projectname LIKE '2017 Q_ portfolio analysis';\par
SELECT * FROM employee WHERE officephone LIKE '360-287-88__';\par
SELECT * FROM employee WHERE OfficePhone LIKE '360-287-88%';\par
SELECT * FROM employee WHERE Department LIKE '%ing';\par
SELECT * FROM employee WHERE Department NOT LIKE '%ing';\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee WHERE OfficePhone IS null;\par
SELECT FirstName, LastName, Department, OfficePhone FROM employee WHERE OfficePhone IS NOT NULL;\par
SELECT COUNT(*) FROM project;\par
SELECT COUNT(*) AS NumberOfProjects FROM project;\par
SELECT COUNT(Department) AS NumberOfDepartments FROM project;\par
SELECT COUNT(DISTINCT Department) AS NumberOfDepartments FROM project;\par
SELECT SUM(MaxHours) AS TotalMaxHours, AVG(MaxHours) AS AverageMaxHours, MIN(MaxHours) AS MinimumMaxHours, MAX(MaxHours) AS MaximumMaxHours FROM project WHERE ProjectID <= 1200;\par
SELECT ProjectName, COUNT(*) FROM project;\par
SELECT * FROM project WHERE MaxHours > AVG(MaxHours);\par
SELECT ProjectID, ProjectName, MaxHours, (24.50 * MaxHours) AS MaxProjectCost FROM project;\par
SELECT Department, COUNT(*) AS NumberOfEmployees FROM employee GROUP BY Department;\par
SELECT Department, COUNT(*) AS NumberOfEmployees FROM employee GROUP BY Department HAVING COUNT(*) > 1;\par
SELECT Department, COUNT(*) AS NumberOfEmployees FROM employee WHERE EmployeeNumber <= 10 GROUP BY Department HAVING COUNT(*) > 1;\par
SELECT FirstName, LastName FROM employee WHERE EmployeeNumber IN (6, 10, 11, 16, 17);\par
SELECT DISTINCT EmployeeNumber FROM assignment WHERE HoursWorked > 50;\par
SELECT FirstName, LastName FROM employee WHERE EmployeeNumber IN (SELECT DISTINCT EmployeeNumber FROM assignment WHERE HoursWorked > 50);\par
SELECT DISTINCT ProjectID FROM project WHERE Department = 'Accounting';\par
SELECT DISTINCT EmployeeNumber FROM assignment WHERE HoursWorked > 40 AND ProjectID IN (SELECT ProjectID FROM project WHERE Department = 'Accounting');\par
SELECT FirstName, LastName FROM employee WHERE EmployeeNumber IN (SELECT DISTINCT EmployeeNumber FROM assignment WHERE HoursWorked > 40 AND ProjectID IN (SELECT ProjectID FROM project WHERE Department = 'Accounting'));\par
SELECT FirstName, LastName, ProjectID, HoursWorked FROM employee, assignment;\par
SELECT FirstName, LastName, ProjectID, HoursWorked FROM employee, assignment WHERE employee.EmployeeNumber = assignment.EmployeeNumber;\par
SELECT FirstName, LastName, ProjectID, HoursWorked FROM employee, assignment WHERE employee.EmployeeNumber = assignment.EmployeeNumber ORDER BY employee.EmployeeNumber, ProjectID;\par
SELECT FirstName, LastName, ProjectID, HoursWorked FROM employee JOIN assignment ON employee.EmployeeNumber = assignment.EmployeeNumber ORDER BY employee.EmployeeNumber, ProjectID;\par
SELECT FirstName, LastName, SUM(HoursWorked) AS TotalHoursWorked FROM employee AS E JOIN assignment AS A ON E.EmployeeNumber = A.EmployeeNumber GROUP BY LastName, FirstName ORDER BY LastName, FirstName;\par
SELECT FirstName, LastName, ProjectID, HoursWorked FROM employee AS E JOIN assignment AS A ON E.EmployeeNumber = A.EmployeeNumber WHERE HoursWorked > 50 ORDER BY LastName, FirstName, ProjectID;\par
SELECT ProjectName, FirstName, LastName, HoursWorked FROM employee AS E JOIN assignment AS A ON E.EmployeeNumber = A.EmployeeNumber JOIN project AS P ON A.ProjectID = P.ProjectID ORDER BY P.ProjectID, A.EmployeeNumber;\par
SELECT * FROM project;\par
SELECT ProjectName, FirstName, LastName, HoursWorked FROM employee AS E JOIN assignment AS A ON E.EmployeeNumber = A.EmployeeNumber JOIN project AS P ON A.ProjectID = P.ProjectID ORDER BY P.ProjectID, A.EmployeeNumber;\par
}
 