use e_commerce_platform;

/*QUESTION 1:List All Products*/
select * from product;

/*QUESTION 2:Get Product Details by Product ID*/
select Product_ID,Product_Name,Product_Description,Product_Price,Product_Quantity
from product
where Product_ID= 1 ;

/*QUESTION 3:Get All Products in a Specific Category*/
select Product_ID,Product_Name,Product_Price
from product,category
where Category_ID= 5 ;

/*QUESTION 4:Search for Products by Keyword*/
select Product_ID,Product_Name,Product_Description,Product_Price
from product
where Product_Name like '%4K Smart TV%' or Product_Description like '%55-inch 4K UHD LED Smart TV with built-in voice assistants%';

/*QUESTION 5:Get All Orders of a Specific Customer*/
SELECT Order_ID,OrderDate,Order_TotalAmount,Order_Status
FROM orders
WHERE  customer_Customer_ID=7;

/*QUESTION 6:Get Customers with No Orders*/
SELECT Customer_ID, Customer_Name, Customer_Email
FROM customer
LEFT JOIN orders ON customer_Customer_ID=Customer_ID
WHERE orders.Order_ID IS NULL;

/*QUESTION 7:Get the Most Expensive Product*/
SELECT Product_ID, Product_Name, Product_Price
FROM product
WHERE Product_Price = (SELECT MAX(Product_Price) 
                        FROM product);



/*QUESTION 8:Get All Products in a Specific Price Range*/
SELECT Product_ID,Product_Name,Product_Price
FROM product
WHERE Product_Price BETWEEN 50 AND 200;

/*QUESTION 9:Get Orders Placed After a Specific Date*/
SELECT Order_ID,OrderDate,Order_TotalAmount,Order_Status
FROM orders
WHERE OrderDate >'2024-11-03';

/*QUESTION 10:Get the Total Number of Orders for Each Customer   r*/
SELECT Customer_ID,COUNT(Order_ID) AS Order_TotalAmount
FROM orders,customer
where customer_Customer_ID=Customer_ID
GROUP BY Customer_ID
ORDER BY Order_TotalAmount DESC;

/*QUESTION 11:Get the Average Price of Products in Each Category*/
SELECT Category_ID,round(AVG(Product_Price),2) AS avg_price
FROM product,category
where category_Category_ID=Category_ID
GROUP BY Category_ID;

/* Question 12 : Revenue per Category in descending order*/
SELECT CategoryName AS Category, round(sum(Product_Price * Product_Quantity),2) as Total_Revenue
from category,product
where Category_ID=category_Category_ID
group by CategoryName
ORDER BY Total_Revenue DESC;

/* Question 13 :Find customers who have purchased more than 5 products in total */
SELECT Customer_ID,Customer_Name AS Customer,COUNT(Product_ID) AS Total_Products_Purchased
FROM customer,orders,orderdetails,product
where customer_Customer_ID=Customer_ID and Order_ID=order_Order_ID and Product_ID=product_Product_ID
GROUP BY 
    Customer_ID
HAVING 
    COUNT(Product_ID) > 4;
    
/* Question 14 :Find products that are part of orders placed by customers with the name "Alice Johnson" and have product id less than 10. */
SELECT Product_Name AS Product
FROM product 
WHERE Product_ID IN (
        SELECT Product_ID
        FROM customer,orders,orderdetails,product
        where customer_Customer_ID=Customer_ID and Order_ID=order_Order_ID and Product_ID=product_Product_ID
        and Customer_Name = 'Alice Johnson'
        and Product_ID<10
    );
/* Question 15 : update a customer name */
UPDATE customer
SET customer_name = 'cccccc'
WHERE customer_id = 22;

/* Question 16 : insert a  customer name with details */
INSERT INTO customer (Customer_ID, Customer_Name, Customer_Email, Customer_Address, Customer_PhoneNumber)
VALUES ('25', 'Charlotte Robinson', 'charlotte.robinson@example.com', '789 Oak Street, Sydney, AUS', '+61 2 9876 5432'
);


