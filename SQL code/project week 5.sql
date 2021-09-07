1. Get the names and the quantities in stock for each product.

SELECT productname, unitsinstock
FROM products;



2. Get a list of current products (Product ID and name).

SELECT productid, productname
FROM products 
WHERE discontinued <> 1;



3. Get a list of the most and least expensive products (name and unit price).

select productID, productname, unitprice
from products
where unitprice in (
(select min(unitprice) from products),
(select max(unitprice) from products)
);



4. Get products that cost less than $20.

SELECT productid, productname, unitprice
FROM products 
WHERE unitprice < 20;



5. Get products that cost between $15 and $25.

SELECT productid, productname, unitprice
FROM products 
WHERE unitprice BETWEEN 15 AND 25;



6. Get products above average price.

SELECT * from products
WHERE unitprice > (SELECT AVG(unitprice) from products);



7. Find the ten most expensive products.

SELECT productid, productname, unitprice
FROM products 
ORDER BY unitprice DESC
LIMIT 10;



8. Get a list of discontinued products (Product ID and name).

SELECT productid, productname
FROM products 
WHERE discontinued = 1;



9. Count current and discontinued products.
?????????????????????
SELECT productID, productname, COUNT(DISTINCT discontinued)
FROM products;
????????????????????????

10. Find products with less units in stock than the quantity on order.

SELECT productid, productname, unitsinstock, unitsinorder
FROM products
WHERE unitsinstock < unitsinorder;


11. Find the customer who had the highest order amount

SELECT o.customerID, od.quantity AS order_amount_customer
From orders as o JOIN order_details AS od ON o.orderID = od.orderID
ORDER BY od.quantity DESC LIMIT 1;



12. Get orders for a given employee and the according customer

SELECT employeeID, orderID, customerID
FROM orders
GROUP BY employeeID, customerID, orderID
ORDER BY employeeID, orderID;

13. Find the hiring age of each employee

SELECT employeeID, lastName, firstName, title, AGE(hiredate, birthDATE)
FROM employees;


14. Create views and/or named queries for some of these queries











