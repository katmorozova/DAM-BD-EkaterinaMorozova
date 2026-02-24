SELECT * FROM classicmodels.products;

/* Exercise 5
Update all product names of type Trains to include the product code in parentheses. 
For example, a product with productCode = S10_1949 and productName = "Vintage Train" will become:
"Vintage Train (code S10_1949)"

Do this with a single SQL statement using the proper MySQL functions.
*/

UPDATE products
    SET 
        productName = CONCAT(productName, ' (code ', productCode, ')')
WHERE productLine = 'Trains';

SELECT productName, productCode
FROM products
WHERE productLine = 'Trains';

/* Exercise 6
Increase buyPrice and MSRP of all products with quantityInStock > 500 by 0.02%.
Do this with one SQL statement.
*/
/* Disable Safe Mode Only for This Session*/
SET SQL_SAFE_UPDATES = 0;

/*Update */
UPDATE products
SET buyPrice = ROUND(buyPrice * 1.0002, 2),
    MSRP = ROUND(MSRP * 1.0002, 2)
WHERE quantityInStock > 500;   

/*Turn safe mode back on */
SET SQL_SAFE_UPDATES = 1;

SELECT buyPrice, MSRP, quantityInStock
FROM products
WHERE quantityInStock > 500;  