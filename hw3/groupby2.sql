    -- Задача 2: Посчитайте общее количество заказов и среднюю сумму по каждому товару.
    SELECT
        item,
        COUNT(*) AS count,
        AVG(amount) AS avg_amount
    FROM
        Orders
    GROUP BY
        item;