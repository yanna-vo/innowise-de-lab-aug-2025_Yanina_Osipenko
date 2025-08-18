    -- Задача 2: Выведите список доставок со статусом и именем клиента.
    SELECT
        Shippings.status,
        Customers.first_name,
        Customers.last_name
    FROM
        Shippings
    JOIN
        Customers ON Shippings.customer = Customers.customer_id;  -- Assuming the column is named "customer"