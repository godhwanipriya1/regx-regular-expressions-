-- last 2 : 4-8,7 or 8 or 1
select order_id from sales where order_id ~* '^us-201(5|7)-[0-9]{4}[4-8](7|8|1)$'

-- first 2 char of customer_name :=> 1 char) should be between a to z and 2 char) e,t,r
select * from customer where customer_name ~*'^[a-z](e|t|r)'

--1) f or o 2) a-z 3)r , t, a  last 2 degit [0-7] , (5,2,6)
select order_id,product_id from sales where product_id ~* '^[f|o][a-z](r|t|a)-[a-z]{2}-[0-9]{6}[0-7](5|2|6)$'

----ship_mode find Second Class
select ship_mode from sales where ship_mode ~'Second'

--ship_mode find first class 
select ship_mode from sales where ship_mode ~* 'first'

--in order_id find last 2 char : 4-9, 5 or 8 or 1
select order_id from sales where order_id ~* '^CA-201(4|6)-[0-9]{4}[4-9](5|8|1)$'

---find sales from sales data
select order_id, sales:: varchar from sales where sales:: varchar ~* '^[0-5](2|7|8)[0-9].[0-9]{2}$'

--find quantity from sales data 2,8
select quantity:: varchar from sales where quantity:: varchar ~*'(2|8)$'

--find profit from sales last 2 char 5|9
select profit:: varchar from sales where profit:: varchar ~*'^[0-9]{3}.[0-7](5|9)$'

--find customer_name from customer 2nd or 3rd char r,a last kuch bhi ho 
select customer_name from customer where customer_name ~*'^[a-z](r|a)[r|a][a-z]'

--find postal_code from customer start number should be 7,9,1 last or bad main kuch bhi ho
select postal_code:: varchar from customer where postal_code:: varchar ~*'(7|9|1)[0-9]$'

--find country from customer small or capital dono condition 
select country from customer where country ~ 'United'
select country from customer where country ~* 'united'

--find age from customer first only 2-4 and then last digit 0
select age:: varchar from customer where age:: varchar ~*'[2-4]0$'