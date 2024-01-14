-- Check the most and least popular payment method

select Payment_Method ,count('Customer ID') as payment_method_count
FROM sales_analytics.dbo.shopping_trends_updated
GROUP BY Payment_Method 
Order by 2 desc
 

 -- PayPal is the most used payment method and bank transfer is the least used.
