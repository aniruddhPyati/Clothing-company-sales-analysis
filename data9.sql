--To check whihc item is the most purchased in terms of quantity

select Item_Purchased,count('Customer_ID') as items_purchased 
fROM sales_analytics.dbo.shopping_trends_updated
group by Item_Purchased
order by 2 desc