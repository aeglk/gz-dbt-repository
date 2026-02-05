SELECT
    date_date AS date,
    ROUND(SUM(ads_cost),2) AS ad_cost,
    SUM(impression) AS impression,
    SUM(click) AS click

FROM {{ ref('int_campaigns') }}
GROUP BY date_date
ORDER BY date_date DESC