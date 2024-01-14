--  Items purchased in each age group quanity wise.
 
SELECT 
    CASE
        WHEN Age BETWEEN 18 AND 31 THEN '18-31'
        WHEN Age BETWEEN 32 AND 45 THEN '32-45'
        WHEN Age BETWEEN 46 AND 59 THEN '46-59'
        WHEN Age BETWEEN 60 AND 70 THEN '60-70'
    END AS age_group,item_purchased,
    COUNT('Item_Purchased') AS item_count
FROM sales_analytics.dbo.shopping_trends_updated
GROUP BY
    CASE
        WHEN Age BETWEEN 18 AND 31 THEN '18-31'
        WHEN Age BETWEEN 32 AND 45 THEN '32-45'
        WHEN Age BETWEEN 46 AND 59 THEN '46-59'
        WHEN Age BETWEEN 60 AND 70 THEN '60-70' 
    END, Item_Purchased
	order by age_group, item_count
