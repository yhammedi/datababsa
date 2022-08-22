--Create Table Product (Product_id,Product_Name,Price)
CREATE TABLE Product(
    Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT product_notNull NOT NULL,
    Price NUMBER CHECK(Price>0)
);
--Create Table Customer (Customer_id,Customer_Name,Customer_Tel)
CREATE TABLE Customer(
    Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
    Customer_Name VARCHAR2(20)  CONSTRAINT customer_notNull NOT NULL,
    Customer_tel NUMBER 
);
-- Create Table Orders (#Customer_id,#Product_id,Quantity,Total_amount)
CREATE TABLE Orders (
    CONSTRAINT fk_customer FOREIGN KEY (Custumer_id) REFERENCES Customer(Costumer_id),
    CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
    Quantity NUMBER,
    Total_amount NUMBER,

);

--Add a column Category (VARCHAR2(20)) to the PRODUCT table
ALTER TABLE Product ADD Category VARCHAR2(20);

--Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;