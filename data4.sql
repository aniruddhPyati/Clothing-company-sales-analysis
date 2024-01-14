-- Finding out what female age group the company sells to the most.

SELECT
    age_group,
    COUNT('Customer ID') AS client_count
FROM (
    SELECT
        CASE
            WHEN Age BETWEEN 18 AND 31 THEN '18-31'
            WHEN Age BETWEEN 32 AND 45 THEN '32-45'
            WHEN Age BETWEEN 46 AND 59 THEN '46-59'
            WHEN Age BETWEEN 60 AND 70 THEN '60-70'
        END AS age_group
    FROM sales_analytics.dbo.shopping_trends_updated
) AS subquery
GROUP BY age_group;

-- We see that the age group 60-70 is the low as compared to the other age groups. 
-- Hence, changes need to be made to attract that age group of female customers.