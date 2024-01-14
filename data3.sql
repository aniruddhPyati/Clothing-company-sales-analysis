-- Checking total male and female population

with total as (
SELECT Gender, count('Customer id') as client_count
FROM [sales_analytics].[dbo].[shopping_trends_updated] group by Gender
)
 

select sum(case when Gender ='Male' then client_count else 0 end) as count_male ,
       sum(case when Gender='Female' then client_count else 0 end) as count_female
	   from total

--	   round( sum(case when Gender ='Male' then client_count else 0 end)/
--	   (sum(case when Gender ='Male' then client_count else 0 end)+
--	   sum(case when Gender ='Female' then client_count else 0 end)) *100,2 ) male_percent,

--	round( sum(case when Gender ='Female' then client_count else 0 end)/
--	   (sum(case when Gender ='Male' then client_count else 0 end)+
--	   sum(case when Gender ='Female' then client_count else 0 end)) *100,2 ) female_percent
	 

-- Hence, it is shown that the number of female customers is significantly less as compared to the number of male customers.






