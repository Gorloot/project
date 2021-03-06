/* Query 1 */
SELECT last_name, first_name, customer_id
FROM CUSTOMER
WHERE customer_id BETWEEN 22229 AND 66669;

/* Query 2 */
SELECT first_name, last_name, salary
FROM EMPLOYEE
WHERE (salary != 3000 AND salary != 3400 
				AND salary != 6000) AND last_name LIKE 'S%'; 

/* Query 3 */
Select order_id 'The order_id column',
	   order_date'The order_date column', 
       ship_date 'The ship_date column'
       
FROM ORDERS
WHERE ship_date IS NULL;

/* Query 4 */
SELECT last_name,
	   First_name

FROM CUSTOMER
WHERE last_name LIKE '%IN%'
ORDER BY last_name DESC;

/* Query 5 */
SELECT product_id 'The product_id column',
	   product_name 'The product_name column',
       list_price 'The list_price column'

FROM PRODUCT
WHERE list_price >30 AND list_price <900;

/* Query 6 range statement */
SELECT order_id 'The order_id column',
	   order_date 'The order_date column'

FROM ORDERS

/* Query 6 search pattern operation, having problem to show table */ 
SELECT order_id 'The order_id column',
	   order_date 'The order_date column'
FROM ORDERS
WHERE order_date LIKE '2015-3%'
ORDER BY order_date DESC;


/* Query 6 logical statement */
SELECT order_id 'The order_id column',
	   order_date 'The order_date column'
FROM ORDERS
WHERE NOT order_date > '2015-4-01'
ORDER BY order_date DESC;

/* Query 7 */
SELECT order_id 'The order_id column',
	   ship_date 'The ship_date column'
FROM ORDERS
WHERE ship_date > '2015-01-10';


/* Query 8 */
SELECT order_id 'The order_id column',
	   order_date 'The ship_date column'
FROM ORDERS
WHERE order_date <= '2015-04-01 23:59:59';

/* Query 9 */
SELECT product_id,
	   product_code,
       product_name
	
FROM PRODUCT
WHERE product_name LIKE '_E_L%'
ORDER BY product_code DESC;

/* Query 10 */
SELECT product_id,
	   category_id,
       vendor_id,
       list_price
       
FROM PRODUCT
WHERE category_id in (11, 61) AND vendor_id in (1, 2) AND list_price >= 1100;

/* Query 11 */
SELECT *

FROM ORDERS
WHERE ship_date > ADDDATE(order_date, INTERVAL 3 DAY) 
                  AND ship_date IS NOT NULL;

/* Query 12 */
SELECT order_id,
	   customer_id,
       order_date

FROM ORDERS
WHERE ship_date IS NOT NULL;
