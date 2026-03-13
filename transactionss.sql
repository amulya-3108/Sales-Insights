SELECT * FROM sales.transactions;

-- distinct products sale in chennai
select distinct product_code from sales.transactions where market_code="Mark001";

-- checck how many sales amount are there as -1 or <=0
select * from sales.transactions where sales_amount = -1;
select * from sales.transactions where sales_amount ;

-- check revenue of year 2020
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year = 2020 and sales.date.month_name="January" and sales.transactions.currency ="INR\r" or sales.transactions.currency ="USD\r"; 