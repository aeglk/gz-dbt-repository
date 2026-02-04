SELECT
    orders_id,
    date_date,
    (margin + shipping_fee - logcost - ship_cost ) AS operational_margin,
    revenue,
    quantity,
    purchase_cost,

FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_raw__ship') }} USING (orders_id)
ORDER BY orders_id DESC
