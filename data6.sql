-- Which season has the most purchases ?

select season,count('Customer ID') as purchase_count
FROM sales_analytics.dbo.shopping_trends_updated
GROUP BY Season

--Summer is the least popular season to purchase, Winter being the most popular