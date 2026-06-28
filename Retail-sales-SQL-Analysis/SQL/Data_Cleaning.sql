show databases;

use retail_sales;

show tables;

create table retail_sales_staging
like retail_sales_dataset;

insert into retail_sales_staging
select * from retail_sales_dataset;

select * from retail_sales_staging;

select `Transaction ID`, count(*) as duplicate
from retail_sales_staging
group by `Transaction ID`
having count(*)>1;

select count(*)
from retail_sales_staging;

alter table retail_sales_staging
rename column `Customer ID` to customer_id;

alter table retail_sales_staging
rename column `Transaction ID` to ransaction_id;

alter table retail_sales_staging
rename column `Product Category` to product_category;

alter table retail_sales_staging
rename column `Price per Unit` to price_per_unit;

alter table retail_sales_staging
rename column `Total Amount` to total_amount;

describe retail_sales_staging;

alter table retail_sales_staging
modify `Date` Date;

select * from retail_sales_staging
where customer_id is null;

select * from retail_sales_staging
where Quantity<0;

select * from retail_sales_staging
where price_per_unit<0;