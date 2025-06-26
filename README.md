Objective:-
To gain a **clear understanding of how to retrieve data** using SQL `SELECT` queries with various conditions, pattern matching, filtering, and sorting. This includes retrieving specific columns, using `WHERE` clauses, and applying `ORDER BY` for sorting results.

Tables Used

1. **CUSTOMER**
   - Columns: `CUSTOMERID`, `CUSTOMERNAME`, `EMAIL`, `PHONENUMBER`
2. **PRODUCT**
   - Columns: `PRODUCTID`, `PNAME`, `PRICE`, `AVAILABLE`
3. **ORDERS**
   - Columns: `ORDER_ID`, `ORDER_DATE`, `CUSTOMERID`, `PRODUCTID`
4. **SHIPPING**
   - Columns: `SHIPPING_ID`, `DELIVERY_DATE`, `STATUS`, `ORDER_ID`
   
Sample Queries Covered

###  Basic Data Retrieval
```sql
SELECT * FROM CUSTOMER;
SELECT * FROM PRODUCT;
SELECT CUSTOMERNAME FROM CUSTOMER WHERE CUSTOMERID = 1001;
SELECT * FROM CUSTOMER WHERE CUSTOMERNAME LIKE 'R%';   -- Starts with R
SELECT * FROM CUSTOMER WHERE CUSTOMERNAME LIKE '%A%A%'; -- Contains A twice
SELECT PNAME FROM PRODUCT WHERE PRICE BETWEEN 80 AND 1000;
SELECT * FROM PRODUCT ORDER BY PRICE DESC;

