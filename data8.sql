--To check the most popular shipping method

select Shipping_Type,count('Customer ID') as purchase_ship_count
FROM sales_analytics.dbo.shopping_trends_updated
Group by Shipping_Type
order by 2 desc