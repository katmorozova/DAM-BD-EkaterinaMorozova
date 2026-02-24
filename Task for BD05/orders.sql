SELECT * FROM classicmodels.orders;

/* Exercise 4
Cancel the order made on 2003-09-28, using SQL instructions. Change the status to
'Cancelled', the shippedDate to the current date, and comments to 'Order cancelled due
to delay'. Do this using a single SQL statement.

Copy the statement in your submission.
*

/* Disable Safe Mode Only for This Session*/
SET SQL_SAFE_UPDATES = 0;

/*Update */
UPDATE orders 
    SET 
        status = 'Cancelled', 
        shippedDate = CURRENT_DATE,
        comments = 'Order cancelled due to delay'
WHERE orderDate = '2003-09-28';        

/*Turn safe mode back on */
SET SQL_SAFE_UPDATES = 1;

SELECT orderDate, status, shippedDate, comments
FROM orders
WHERE orderDate = '2003-09-28';


/* Exercise 10
Cancel all orders made by customers handled by the customer Elizabeth Lincoln. 
Change the status to 'Cancelled', shippedDate to the current date, 
and comments to 'Order cancelled by management'.
*/

UPDATE orders
    JOIN customers 
        ON orders.customerNumber = customers.customerNumber
    JOIN employees 
        ON customers.salesRepEmployeeNumber = employees.employeeNumber
SET 
    orders.status = 'Cancelled',
    orders.shippedDate = CURRENT_DATE(),
    orders.comments = 'Order cancelled by management'
WHERE employees.firstName = 'Elizabeth'
  AND employees.lastName = 'Lincoln';