    -- Задача 1: Получите список заказов вместе с именем клиента, который сделал заказ.
    SELECT
        Customers.first_name,
        Customers.last_name,
        Orders.item,
        Orders.amount
    FROM
        Orders
    JOIN
        Customers ON Orders.customer_id = Customers.customer_id;