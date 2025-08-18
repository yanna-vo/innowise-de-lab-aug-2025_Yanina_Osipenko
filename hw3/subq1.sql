    -- Задача 1: Найдите всех клиентов, которые сделали заказ с максимальной суммой.
    SELECT
        Customers.first_name,
        Customers.last_name,
        Orders.amount
    FROM
        Customers
    JOIN
        Orders ON Customers.customer_id = Orders.customer_id
    WHERE
        Orders.amount = (SELECT MAX(amount) FROM Orders);