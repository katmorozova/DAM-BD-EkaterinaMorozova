SELECT * FROM classicmodels.employees;

/* Exercise 1
1.2. Insert a new record into the employees table using the graphical tool. The data
must be:

employeeNumber: 2001
lastName: Ortega
firstName: Marc
extension: x201
email: marc.o@classicmodels.com
officeCode: 1
reportsTo: 1002
jobTitle: Sales Rep

SOLUTION: Select table employees -> Select icon table -> sreen till ending -> 
select new column -> introduce date (for all dates with columns representitys) -> 
Push button Apply
*/

/* Exercise 9
Add all customers as new employees, using their contact names as first and last name. 
Use customerNumber + 2000 as the new employeeNumber, 
leave all other fields as 'x0000' extension, 
'new@company.com' email,'1' officeCode, 
'Sales Rep' jobTitle Use contactFirstName as firstName, 
contactLastName as lastName.

Do this with a single SQL statement.
*/

INSERT INTO employees(
    employeeNumber, 
    lastName, 
    firstName, 
    extension,
    email, 
    officeCode, 
    reportsTo, 
    jobTitle
)
SELECT 
    customerNumber + 2000,
    contactLastName,
    contactFirstName,
    'x0000',
    'new@company.com',
    '1',
    NULL,
    'Sales Rep'
FROM customers;