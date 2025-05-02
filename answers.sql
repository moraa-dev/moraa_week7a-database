--Writing an SQL query to transform this table into 1NF, ensuring that each row represents a single product for an order

--Creating the table
CREATE ProductDetail(OrderID int, CustomerName varchar(100), Products varchar(100),primary key(OrderID, Products));

INSERT into ProductDetail (OrderID, CustomerName, Products) 
VALUES
(101,'John Doe', 'Laptop'), (101, 'John Doe', 'Mouse'), (102, 'Jane Smith', 'Tablet'), (102,'Jane Smith', 'Keyboard'), (102, 'Jane Smith', 'Mouse'), (103, 'Emily Clark', 'Phone');



--Write an SQL query to transform this table into 2NF by removing partial dependencies. Ensure that each non-key column fully depends on the entire primary key.
--Creating a table
CREATE table Orders (OrderID int, primary key, CustomerName varchar (100));
INSERT INTO Orders (OrderID, CustomerName)
VALUES (101, 'John Doe'), (102, 'Jane Smith'), (103, 'Emily Clark');

--creating a table
CREATE table OrderDetails (OrderID int, Product varchar(100), Quantity int, primary key(OrderID, Product), foreign key(OrderID)references Orders(OrderID));

INSERT INTO OrderDetails (OrderID, Product, Quantity)

VALUES (101, 'Laptop', 2), (101, 'Mouse', 1) (102, 'Tablet', 3), (102, 'Keyboard', 1), (102, 'Mouse', 2), (103, 'Phone', 1);
