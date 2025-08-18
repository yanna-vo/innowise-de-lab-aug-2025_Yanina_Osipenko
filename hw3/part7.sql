    WITH QualifiedCustomers AS (
        SELECT
            c.customer_id,
            c.first_name || ' ' || c.last_name AS full_name,
            c.country
        FROM
            Customers c
        WHERE
            c.customer_id IN (SELECT customer_id FROM Orders GROUP BY customer_id HAVING COUNT(*) >= 2)
            AND c.customer_id IN (SELECT customer FROM Shippings WHERE status = 'Delivered')
    ),
    OrderSummary AS (
        SELECT
            o.customer_id,
            COUNT(*) AS total_orders,
            SUM(o.amount) AS total_amount
        FROM
            Orders o
        GROUP BY
            o.customer_id
    )
    SELECT
        qc.full_name,
        qc.country,
        os.total_orders,
        os.total_amount
    FROM
        QualifiedCustomers qc
    JOIN
        OrderSummary os ON qc.customer_id = os.customer_id;