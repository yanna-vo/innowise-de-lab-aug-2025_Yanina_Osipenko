-- 1. Создать новую таблицу с именем Departments.
CREATE TABLE Departments (
    DepartmentID SERIAL PRIMARY KEY,
    DepartmentName VARCHAR(50) UNIQUE NOT NULL,
    Location VARCHAR(50)
);

-- 2. Изменить таблицу Employees, добавив новый столбец с именем Email.
ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);

-- 3. Добавить ограничение UNIQUE к столбцу Email в таблице Employees, предварительно заполнив любыми значениями.
-- 3a. Заполнить столбец Email для всех существующих сотрудников.
UPDATE Employees SET Email = LOWER(firstname || '.' || lastname || '.' || employeeid || '@example.com');
-- 3b. Добавить ограничение UNIQUE к столбцу Email.
ALTER TABLE Employees ADD CONSTRAINT unique_email UNIQUE (Email);

-- 4. Переименовать столбец Location в таблице Departments в OfficeLocation.
ALTER TABLE Departments RENAME COLUMN Location TO OfficeLocation;

SELECT * FROM Departments

SELECT * FROM Employees