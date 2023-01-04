Use go_sales;

SELECT  year(o.Date)  as  year,Sum(o.quantity  *  `Unit Price`)  as  
Total_Amount  FROM  go_sales.orders as o
inner join go_sales.daily_sales as d
on o.`Product Number`= d.`Product Number`
group  by  year
order  by  Total_amount  desc;

