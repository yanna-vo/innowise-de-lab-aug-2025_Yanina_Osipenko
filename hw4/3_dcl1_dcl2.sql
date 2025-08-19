-- 1. Создать нового пользователя PostgreSQL (роль) с именем hr_user и простым паролем.
CREATE USER hr_user WITH PASSWORD 'simple_password';

-- 2. Предоставить hr_user право SELECT на таблицу Employees.
GRANT SELECT ON Employees TO hr_user;