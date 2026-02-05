SELECT 
    date,
    total_margin - ad_cost as ads_margin,
    average_basket,
    total_margin AS operational_margin,
    ad_cost,
    impression as ads_impression,
    click as ads_click,
    total_quantity AS quantity,
    total_revenue AS revenue,
    Total_purchase_cost as purchase_cost,
    Total_shipping_fee AS shipping_fee,
    total_logcosts as log_cost,

FROM {{ ref('int_campaigns_day') }}
LEFT JOIN {{ ref('finance_days') }}
USING (date)

