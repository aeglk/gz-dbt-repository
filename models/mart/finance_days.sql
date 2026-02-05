SELECT
    date_date AS date,
    COUNT(orders_id) AS total_nb_transactions,
    ROUND(SUM(revenue),0) AS total_revenue,
    SUM(revenue)/SUM(quantity) AS average_basket,
    ROUND(SUM(operational_margin),0) AS total_margin,
    ROUND(SUM(purchase_cost),0) AS Total_purchase_cost,
    ROUND(SUM(shipping_fee),0) AS Total_shipping_fee,
    ROUND(SUM(logcost),0) AS total_logcosts,
    ROUND(SUM(quantity),0) AS total_quantity,
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date