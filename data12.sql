--  Payment method in each age group quanity wise.
 
SELECT 
    CASE
        WHEN Age BETWEEN 18 AND 31 THEN '18-31'
        WHEN Age BETWEEN 32 AND 45 THEN '32-45'
        WHEN Age BETWEEN 46 AND 59 THEN '46-59'
        WHEN Age BETWEEN 60 AND 70 THEN '60-70'
    END AS age_group,Payment_Method,
    COUNT('Payment_Method') AS payments_made
FROM sales_analytics.dbo.shopping_trends_updated
GROUP BY
    CASE
        WHEN Age BETWEEN 18 AND 31 THEN '18-31'
        WHEN Age BETWEEN 32 AND 45 THEN '32-45'
        WHEN Age BETWEEN 46 AND 59 THEN '46-59'
        WHEN Age BETWEEN 60 AND 70 THEN '60-70' 
    END, Payment_Method
	order by age_group,payments_made
