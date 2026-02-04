SELECT
    orders_id,
    date_date,
    ROUND(SUM(revenue),2) AS revenue,
    SUM(quantity) AS quantity,
    ROUND(SUM(quantity * purchase_price),2) AS purchase_cost,
    ROUND(SUM(revenue) - SUM(quantity * purchase_price),2) AS margin
FROM {{ ref('int_sales_margin') }}
GROUP BY orders_id, date_date
ORDER BY orders_id DESC
