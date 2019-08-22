

--using WHERE with IN
select * from customers
	where id in (select id from customers 
	where name in ('Kroger', 'Nationwide', 'Abercrombie Fitch'));

--select top 3 * from customers order by sales desc

/*
select * from customers
	where sales > (select avg(sales) from customers);
	
--update customer set sales = sales + 100000 where name = 'Kroger'
*/

/*
select city, count(*), sum(sales)
	from customers
	Group by city
	having sum(sales) > 600000
	order by sum(sales) desc
*/
	