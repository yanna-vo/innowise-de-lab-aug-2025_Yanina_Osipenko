-- 1. Увеличить Salary всех сотрудников в отделе 'HR' на 10%.
UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'HR';

-- 2. Обновить Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'.
UPDATE Employees
SET Department = 'Senior IT'
WHERE Salary > 70000.00;

-- 3. Удалить всех сотрудников, которые не назначены ни на один проект в таблице EmployeeProjects.
DELETE FROM Employees
WHERE NOT EXISTS (
   SELECT 1
   FROM EmployeeProjects
   WHERE EmployeeProjects.EmployeeID = Employees.EmployeeID
);

-- 4. Вставить новый проект и назначить на него двух существующих сотрудников с определенным количеством HoursWorked в EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.
BEGIN;
-- Вставляем новый проект
INSERT INTO Projects (ProjectName, Budget, StartDate, EndDate)
VALUES ('Система автоматизации отчетности', 120000.00, '2025-01-01', '2025-06-30');
-- Получаем ID этого только что созданного проекта.
WITH NewProject AS (
 SELECT currval(pg_get_serial_sequence('Projects', 'ProjectID')) AS NewProjectID
)
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
SELECT EmployeeID, (SELECT NewProjectID FROM NewProject), 40
FROM Employees
WHERE EmployeeID IN (1, 2); -- Alice Smith (ID 1) и Bob Johnson (ID 2) назначаются на проект
COMMIT;

SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
WHERE Department = 'HR';

SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
WHERE Salary > 70000.00;

SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees;

SELECT * FROM EmployeeProjects WHERE ProjectID = 4;