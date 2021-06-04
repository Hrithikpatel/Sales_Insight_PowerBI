
/*Shows all Customers Records*/
select * from sales.customers;

/*Show transactions for Chennai market (market code for chennai is Mark001*/

select a.*,b.zone ,b.markets_name from sales.transactions as a inner join sales.markets as b
 on a.market_code=b.markets_code where market_code='Mark001' 
 
 /*Show distrinct product codes that were sold in chennai*/

select distinct(a.product_code) ,b.markets_name from sales.transactions as a inner join sales.markets as b
on a.market_code=b.markets_code where market_code='Mark001' 

/*Show transactions where currency is US dollars*/

SELECT * from sales.transactions where currency="USD"

/*Show transactions in 2020 join by date table*/

select a.* ,b.* from sales.transactions as a inner join sales.date as b on a.order_date=b.date where year ='2020'; 

/*Show total revenue in year 2020*/
/*We use 'INR/r' bcuz sales_amount has duplicates in terms of 'INR'*/
select sum(a.sales_amount) from sales.transactions as a inner join sales.date as b 
on a.order_date=b.date where (currency ='INR\r' or 'USD') and year='2020';

/*Show total revenue in year 2020, January Month*/

select sum(a.sales_amount) from sales.transactions as a inner join sales.date as b 
on a.order_date=b.date where (currency ='INR\r' or 'USD') and b.year='2020' and b.month_name='January';

/*Show total revenue in year 2020 in Chennai*/

Select SUM(a.sales_amount) FROM sales.transactions as a INNER JOIN sales.date as b ON a.order_date=b.date
where b.year=2020 and a.market_code="Mark001" and (a.currency='INR\r' or a.currency = 'USD');





