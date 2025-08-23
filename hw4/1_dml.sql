-- 1. Вставить двух новых сотрудников в таблицу Employees.
INSERT INTO Employees (firstname, lastname, department, salary) VALUES
('Eva', 'Green', 'Marketing', 55000.00),
('Michael', 'Scott', 'Sales', 68000.00);

-- 2. Выбрать всех сотрудников из таблицы Employees.
SELECT * FROM Employees;

-- 3. Выбрать только firstname и lastname сотрудников из отдела 'IT'.
SELECT firstname, lastname FROM Employees WHERE department = 'IT';

-- 4. Обновить Salary 'Alice Smith' до 65000.00.
UPDATE Employees SET salary = 65000.00 WHERE firstname = 'Alice' AND lastname = 'Smith';

-- 5a. Удалить записи из EmployeeProjects, связанные с employeeid = 4.
DELETE FROM EmployeeProjects WHERE employeeid = 4;

-- 5b. Удалить сотрудника, чья lastname — 'Prince'.
DELETE FROM Employees WHERE lastname = 'Prince';

-- 6. Проверить все изменения, используя SELECT * FROM Employees;.
SELECT * FROM Employees;