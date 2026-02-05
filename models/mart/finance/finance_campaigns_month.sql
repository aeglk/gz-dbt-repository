SELECT 
    date_trunc(date, month) as datemonth,
    SUM(ads_margin) as ads_margin,
    SUM(average_basket) as average_basket,
    SUM(operational_margin) as operational_margin,
    SUM(ad_cost) as ads_cost,
    SUM(ads_impression) as ads_impression,
    SUM(ads_click) as ads_click,
    SUM(quantity) as quantity,
    SUM(revenue) as revenue,
    SUM(purchase_cost) as purchase_cost,
    SUM(shipping_fee) as shipping_fee,
    SUM(log_cost) as log_cost,

FROM {{ ref('finance_campaigns_day') }}
GROUP BY (datemonth)

