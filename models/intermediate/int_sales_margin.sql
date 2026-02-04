SELECT *,
    revenue-purchase_price as margin 
FROM {{ ref('stg_raw__sales') }} sales
LEFT JOIN {{ ref('stg_raw__product') }} product
    ON sales.products_id = product.products_id