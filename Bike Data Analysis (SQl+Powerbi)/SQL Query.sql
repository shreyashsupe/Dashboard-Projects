
WITH cte AS (
    SELECT * FROM bike_share_yr_0
    UNION ALL
    SELECT * FROM bike_share_yr_1
)
SELECT 
    dteday, 
    season, 
    a.yr, 
    weekday, 
    hr, 
    rider_type, 
    riders, 
    price, 
    COGS,
    (riders * price) AS revenue,
    (riders * price - COGS) AS profit
FROM cte AS a
LEFT JOIN cost_table AS b 
ON a.yr = b.yr;


















