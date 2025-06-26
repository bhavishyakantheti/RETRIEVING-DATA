SQL> 
SQL> SELECT * FROM CUSTOMER;

CUSTOMERID CUSTOMERNAME                                                         
---------- ------------------------------                                       
EMAIL                                    PHONENUMBER                            
---------------------------------------- -----------                            
      1001 SMITH                                                                
SMANTH@GMAIL.COM                          8583434461                            
                                                                                
      1002 MITH                                                                 
ANTH@gmail.com                             818343446                            
                                                                                
      1003 VMITH                                                                
VANTH@gmail.com                            828343446                            
                                                                                

CUSTOMERID CUSTOMERNAME                                                         
---------- ------------------------------                                       
EMAIL                                    PHONENUMBER                            
---------------------------------------- -----------                            
      1004 VARAH                                                                
VARAH@gmail.com                            838343446                            
                                                                                
      1005 AROHI                                                                
AROHI@GMAIL.COM                            848343446                            
                                                                                
      1007 RAM                                                                  
RAMISH@GMAIL.COM                           878343446                            
                                                                                

6 rows selected.

SQL> SELECT * FROM PRODUCT;

 PRODUCTID PNAME                     PRICE  AVAILABLE                           
---------- -------------------- ---------- ----------                           
     90009 EARPHONES-NOIDA           99.85        100                           
     90010 EARPHONES-NOIDA-2A       199.85        100                           
     90011 EARBUDS-NOIDA-2A        1999.25        100                           
     90012 EARBUDS-NOIDA-109.A     1499.25        100                           
     90013 WATCH-HARBER           14998.25        100                           
     90014 WATCH-YEER                 1768         30                           

6 rows selected.

SQL> SELECT * FROM ORDERS;

ORDER_ID                       ORDER_DAT CUSTOMERID  PRODUCTID                  
------------------------------ --------- ---------- ----------                  
30A190S                        24-SEP-24       1001      90012                  
30A191S                        24-SEP-24       1002      90012                  
30A192S                        25-SEP-24       1003      90014                  
30A193S                        25-JAN-25       1007      90011                  
30A194S                        25-FEB-25       1004      90011                  
30A195S                        25-FEB-25       1005      90013                  

6 rows selected.

SQL> SELECT * FROM SHIPPING;

SHIPPING_ID DELIVERY_ STATUS               ORDER_ID                             
----------- --------- -------------------- ------------------------------       
      11180 01-OCT-24 DELIVERD             30A190S                              
      11181 01-OCT-24 DELIVERD             30A191S                              
      11182 03-OCT-24 DELIVERD             30A192S                              
      11183 03-FEB-25 DELIVERD             30A193S                              
      11184 03-MAR-25 DELIVERD             30A194S                              
      11185 03-MAR-25 DELIVERD             30A195S                              

6 rows selected.


SQL> SELECT CUSTOMERNAME
  2  FROM CUSTOMER
  3  WHERE CUSTOMERID=1001;

CUSTOMERNAME                                                                    
------------------------------                                                  
SMITH                                                                           

SQL> SELECT EMAIL
  2  FROM CUSTOMER
  3  WHERE CUSTOMERID=1001 AND CUSTOMERID=1002;

no rows selected

SQL> SELECT EMAIL
  2  FROM CUSTOMER
  3  WHERE CUSTOMERID=1001 OR CUSTOMERID=1002;

EMAIL                                                                           
----------------------------------------                                        
SMANTH@GMAIL.COM                                                                
ANTH@gmail.com                                                                   

SQL> SELECT ORDER_ID, ORDER_DATE
  2  FROM ORDERS
  3  WHERE CUSTOMERID=1001;

ORDER_ID                       ORDER_DAT                                        
------------------------------ ---------                                        
30A190S                        24-SEP-24                                        

SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE PRODUCTID = 90011;

 PRODUCTID PNAME                     PRICE  AVAILABLE                           
---------- -------------------- ---------- ----------                           
     90011 EARBUDS-NOIDA-2A        1999.25        100                           

SQL> SELECT CUSTOMERNAME
  2  FROM CUSTOMER
  3  WHERE CUSTOMERNAME LIKE 'R%';

CUSTOMERNAME                                                                    
------------------------------                                                  
RAM                                                                             


SQL> SELECT *
  2  FROM CUSTOMER
  3  WHERE CUSTOMERNAME LIKE 'B%';

no rows selected

SQL> SELECT *
  2  FROM CUSTOMER
  3  WHERE CUSTOMERNAME LIKE '%A%A%';

CUSTOMERID CUSTOMERNAME                                                         
---------- ------------------------------                                       
EMAIL                                    PHONENUMBER                            
---------------------------------------- -----------                            
      1004 VARAH                                                                
VARAH@gmail.com                            838343446                            
                                                                                

SQL> SELECT *
  2  FROM CUSTOMER
  3  WHERE CUSTOMERNAME LIKE '%A_';

CUSTOMERID CUSTOMERNAME                                                         
---------- ------------------------------                                       
EMAIL                                    PHONENUMBER                            
---------------------------------------- -----------                            
      1004 VARAH                                                                
VARAH@gmail.com                            838343446                            
                                                                                
      1007 RAM                                                                  
RAMISH@GMAIL.COM                           878343446                            
                                                                                

SQL> SELECT CUSTOMERNAME
  2  FROM CUSTOMER
  3  WHERE CUSTOMERNAME LIKE 'A%' OR CUSTOMERNAME LIKE 'E%' OR CUSTOMERNAME LIKE 'I%' OR CUSTOMERNAME LIKE 'O%' OR
  4  CUSTOMERNAME LIKE 'U%';

CUSTOMERNAME                                                                    
------------------------------                                                  
AROHI                                                                           

SQL> SELECT PNAME
  2  FROM PRODUCT
  3  WHERE PRICE BETWEEN 80 AND 1000;

PNAME                                                                           
--------------------                                                            
EARPHONES-NOIDA                                                                 
EARPHONES-NOIDA-2A                                                              

SQL> SELECT ORDER_ID
  2  FROM SHIPPING
  3  WHERE DELIVERY_DATE BETWEEN '20-SEP-24' AND '01-JAN-25';

ORDER_ID                                                                        
------------------------------                                                  
30A190S                                                                         
30A191S                                                                         
30A192S                                                                         

SQL> SELECT * FROM PRODUCT
  2  ORDER BY PRICE DESC;

 PRODUCTID PNAME                     PRICE  AVAILABLE                           
---------- -------------------- ---------- ----------                           
     90013 WATCH-HARBER           14998.25        100                           
     90011 EARBUDS-NOIDA-2A        1999.25        100                           
     90014 WATCH-YEER                 1768         30                           
     90012 EARBUDS-NOIDA-109.A     1499.25        100                           
     90010 EARPHONES-NOIDA-2A       199.85        100                           
     90009 EARPHONES-NOIDA           99.85        100                           

6 rows selected.

SQL> SELECT * FROM CUSTOMER
  2  ORDER BY CUSTOMERNAME;

CUSTOMERID CUSTOMERNAME                                                         
---------- ------------------------------                                       
EMAIL                                    PHONENUMBER                            
---------------------------------------- -----------                            
      1005 AROHI                                                                
AROHI@GMAIL.COM                            848343446                            
                                                                                
      1002 MITH                                                                 
ANTH@gmail.com                             818343446                            
                                                                                
      1007 RAM                                                                  
RAMISH@GMAIL.COM                           878343446                            
                                                                                

CUSTOMERID CUSTOMERNAME                                                         
---------- ------------------------------                                       
EMAIL                                    PHONENUMBER                            
---------------------------------------- -----------                            
      1001 SMITH                                                                
SMANTH@GMAIL.COM                          8583434461                            
                                                                                
      1004 VARAH                                                                
VARAH@gmail.com                            838343446                            
                                                                                
      1003 VMITH                                                                
VANTH@gmail.com                            828343446                            
                                                                                

6 rows selected.

SQL> SPOOL OFF
