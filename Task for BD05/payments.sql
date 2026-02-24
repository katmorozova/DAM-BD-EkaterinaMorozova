SELECT * FROM classicmodels.payments;

/* Exercise 2
Insert the following payments into the payments table using SQL statements:
customerNumber: 124, 151, 112
checkNumber: H123, H124, H125
paymentDate: 2024-02-06, 2024-02-07, 2024-02-05
amount: 845.00, 70.00, 1024.00
Copy the SQL statements you used in your submission. Only include
*/
INSERT INTO payments(customerNumber, checkNumber, paymentDate, amount)
    VALUES
        (124, 'H123', '2024-02-06', 845.00),
        (151, 'H124', '2024-02-07', 70.00),
        (112, 'H125', '2024-02-05', 1024.00)
;

select customerNumber, checkNumber, paymentDate, amount
FROM payments
WHERE checkNumber BETWEEN 'H123' AND 'H125';

/* Exercise 7
Remove all payments made by customers who are represented by employees with the last name 'Patterson'.
Use a single SQL statement and copy it for the task delivery.
*/
DELETE 
    FROM payments 
WHERE customerNumber IN (
    SELECT customerNumber 
    FROM customers 
JOIN employees 
ON customers.salesRepEmployeeNumber = employees.employeeNumber
    WHERE lastName = 'Patterson'
    );
    