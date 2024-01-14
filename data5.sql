-- Checking which is the most and least popular category among customers

select Category, count('CUSTOMER ID') as client_count 
from sales_analytics.dbo.shopping_trends_updated
GROUP BY Category

--Most popular : Clothing
--Least popular : Outwear