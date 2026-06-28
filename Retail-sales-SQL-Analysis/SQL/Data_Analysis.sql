select sum(total_amount)
from retail_sales_staging;

select count(*)
from retail_sales_staging;

select count(distinct customer_id)
from retail_sales_staging;

select avg(total_amount)
from retail_sales_staging;

select product_category, sum(total_amount) as revenue
from retail_sales_staging
group by product_category;

select month(`Date`) as monthly_revenue, sum(total_amount) as revenue
from retail_sales_staging
group by monthly_revenue;

select gender, sum(total_amount)
from retail_sales_staging
group by gender;

select * from retail_sales_staging
order by total_amount desc;

select avg(Quantity)
from retail_sales_staging;

select case 
when age<20 then 'Under 20'
when age between 20 and 29 then 'Between 20-29'
when age between 30 and 29 then 'Between 30-39'
else '40+'
end as age_group, sum(total_amount)
from retail_sales_staging
group by age_group;