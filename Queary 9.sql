-- Group  the order by date and calculate the average number of pizzas orders per day.

SELECT 
    round(AVG(quantity),0) as avg_pizza_order
FROM
    (SELECT 
        orders.order_date, SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS order_quantity;