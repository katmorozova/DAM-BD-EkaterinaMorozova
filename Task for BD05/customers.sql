SELECT * FROM classicmodels.customers;

/* Exercise 1

1.1. Insert a new record in the customers table using the graphical tool offered by MySQL Workbench. 
The data must be the following:

customerNumber: 500
customerName: Stellar Tech Ltd.
contactLastName: Rivers
contactFirstName: Julia
phone: +34 600123456
addressLine1: 99 Innovation Rd.
addressLine2: NULL
city: Barcelona
state: NULL
postalCode: 08018
country: Spain
salesRepEmployeeNumber: 1056
creditLimit: 75000.00

SOLUTION: Select table customers -> Select icon table -> sreen till ending -> 
select new column -> introduce date (for all dates with columns representitys) -> 
Push button Apply
*/


/* Exercise 3
Modify the addresses of some customers using the graphical tool, and provide
screenshots showing the changes made. Update the records in the customers table as
follows:
customerNumber: 141, 124, 119
city: Girona, Lleida, Tarragona
addressLine1: 43 State St, 2 Walls St, 46 Marlborough Rd.
postalCode: 17001, 25002, 43003

Select table customers -> Select rows with customerNumber 141, 124, 119 -> change for new dates -> Apply
*/

/* Exercise 8
Delete all customers from Lisbon who have not made any payment.
Use one SQL statement only.
*/
DELETE FROM customers
WHERE city = 'Lisboa'
  AND customerNumber NOT IN (
        SELECT customerNumber
        FROM payments
    );