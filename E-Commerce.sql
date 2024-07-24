CREATE TABLE Address (
AddressID INT, DoorNO INT,
StreetName VARCHAR(100), LandMark VARCHAR(100),
Pincode INT,
City VARCHAR(100), State VARCHAR(100),
PRIMARY KEY(AddressID)
);

INSERT INTO Address
VALUES (17, 305, 'Main Street', 'Near Park', 123456, 'Cityville', 'Alabama');
INSERT INTO Address
VALUES (29, 102, 'Broadway', 'Near Mall', 654321, 'Townville', 'Alaska');
INSERT INTO Address
VALUES (34, 407, 'Oak Avenue', 'Near School', 987654, 'Villageville', 'Arizona');
INSERT INTO Address
VALUES (42, 510, 'Maple Street', 'Near Hospital', 741852, 'Hamletville', 'Arkansas');
INSERT INTO Address
VALUES (56, 213, 'Elm Avenue', 'Near Library', 369258, 'Suburbia', 'California');
INSERT INTO Address
VALUES (63, 619, 'Pine Street', 'Near Stadium', 582369, 'Metrocity', 'Colorado');
INSERT INTO Address
VALUES (72, 728, 'Cedar Avenue', 'Near Theater', 486753, 'Uptown', 'Connecticut');
INSERT INTO Address
VALUES (85, 825, 'Birch Street', 'Near Beach', 951357, 'Downtown', 'Delaware');
INSERT INTO Address
VALUES (91, 930, 'Aspen Avenue', 'Near River', 357951, 'Ruralville', 'Florida');
INSERT INTO Address
VALUES (98, 1031, 'Willow Street', 'Near Airport', 159753,'Villatown', 'Georgia');


CREATE TABLE Customers (
CustomerID INT, FirstName VARCHAR(100),
MiddleName VARCHAR(100), LastName VARCHAR(100), DOB DATE,
email VARCHAR(100),
PRIMARY KEY(CustomerID)
);

INSERT INTO Customers
VALUES (5001, 'John', 'A', 'Doe', TO_DATE('1990-05-15', 'YYYY-MM-DD'),
'john.doe@example.com');
INSERT INTO Customers
VALUES (5002, 'Jane', 'B', 'Smith', TO_DATE('1985-10-20', 'YYYY-MM-DD'),
'jane.smith@example.com');
INSERT INTO Customers
VALUES (5003, 'Alice', 'C', 'Johnson', TO_DATE(, '1995-02-28', 'YYYY-MM-
DD'),'alice.johnson@example.com');
INSERT INTO Customers
VALUES (5004, 'Bob', 'D', 'Williams', TO_DATE('1980-12-10', 'YYYY-MM-
DD'), 'bob.williams@example.com');
INSERT INTO Customers
VALUES (5005, 'Charlie', 'E', 'Brown', TO_DATE( '1998-07-04', 'YYYY-MM-
DD'), 'charlie.brown@example.com');
INSERT INTO Customers
VALUES (5006, 'Emma', 'F', 'Garcia', TO_DATE('1987-09-30', 'YYYY-MM-DD'),
'emma.garcia@example.com');
INSERT INTO Customers
VALUES (5007, 'David', 'G', 'Martinez', TO_DATE('1993-03-18', 'YYYY-MM-
DD'), 'david.martinez@example.com');
INSERT INTO Customers
VALUES (5008, 'Olivia', 'H', 'Lopez', TO_DATE('1982-11-25', 'YYYY-MM-DD'),
'olivia.lopez@example.com');
INSERT INTO Customers
VALUES (5009, 'James', 'I', 'Lee', TO_DATE('1997-04-12', 'YYYY-MM-DD'),
'james.lee@example.com');
INSERT INTO Customers
VALUES (5010, 'Sophia', 'J', 'Young', TO_DATE('1989-08-22', 'YYYY-MM-DD'),
'sophia.young@example.com');

CREATE TABLE Stays_at (
AddressID INT, CustomerID INT,
PRIMARY KEY(AddressID,CustomerID),
FOREIGN KEY (AddressID) REFERENCES Address(AddressID), FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Stays_at VALUES (17, 5001);
INSERT INTO Stays_at VALUES (29, 5002);
INSERT INTO Stays_at VALUES (34, 5003);
INSERT INTO Stays_at VALUES (42, 5004);
INSERT INTO Stays_at VALUES (56, 5005);
INSERT INTO Stays_at VALUES (63, 5006);
INSERT INTO Stays_at VALUES (72, 5007);
INSERT INTO Stays_at VALUES (85, 5008);
INSERT INTO Stays_at VALUES (91, 5009);
INSERT INTO Stays_at VALUES (98, 5010);


CREATE TABLE MobileNumber (
PhoneNO INT, CustomerID INT, PRIMARY KEY(PhoneNO),
FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO MobileNumber VALUES (9234567890, 5001);
INSERT INTO MobileNumber VALUES (8345678901, 5002);
INSERT INTO MobileNumber VALUES (9456789012, 5003);
INSERT INTO MobileNumber VALUES (6567890123, 5004);
INSERT INTO MobileNumber VALUES (9678901234, 5005);
INSERT INTO MobileNumber VALUES (7789012345, 5006);
INSERT INTO MobileNumber VALUES (7890123456, 5007);
INSERT INTO MobileNumber VALUES (8901234567, 5008);
INSERT INTO MobileNumber VALUES (9012345678, 5009);
INSERT INTO MobileNumber VALUES (9876543210, 5010);


CREATE TABLE Review (
CustomerID INT, ProductID INT, Ratings INT,
Description VARCHAR(255),
PRIMARY KEY(CustomerID,ProductID),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
);
INSERT INTO Review
VALUES (5001, 987651, 4, 'Good product.');
INSERT INTO Review
VALUES (5002, 543222, 5, 'Excellent service!');
INSERT INTO Review
VALUES (5003, 123463, 3, 'Average quality.');
INSERT INTO Review
VALUES (5004, 678614, 2, 'Poor packaging.');
INSERT INTO Review
VALUES (5005, 336575, 4, 'Fast delivery.');
INSERT INTO Review
VALUES (5006, 873556, 5, 'Highly recommended.');
INSERT INTO Review
VALUES (5007, 341687, 3, 'Could be better.');
INSERT INTO Review
VALUES (5008, 12346, 4, 'Satisfied with the purchase.');
INSERT INTO Review
VALUES (5009, 243244, 5, 'Great experience!');
INSERT INTO Review
VALUES (5010, 423471, 4, 'Happy with the product.');


CREATE TABLE Contains (
CartID INT, ProductID INT,
PRIMARY KEY(CartID,ProductID),
FOREIGN KEY (CartID) REFERENCES Cart(CartId),
FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
);
INSERT INTO Contains VALUES (2001, 987651);
INSERT INTO Contains VALUES (2002, 543222);
INSERT INTO Contains VALUES (2003, 123463);
INSERT INTO Contains VALUES (2004, 678614);
INSERT INTO Contains VALUES (2005, 336575);
INSERT INTO Contains VALUES (2006, 873556);
INSERT INTO Contains VALUES (2007, 341687);
INSERT INTO Contains VALUES (2008, 879681);
INSERT INTO Contains VALUES (2009, 243244);
INSERT INTO Contains VALUES (2010, 423471);


CREATE TABLE Cart (
CartID INT, CustomerID INT, PRIMARY KEY(CartID),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Cart VALUES (2001, 5001);
INSERT INTO Cart VALUES (2002, 5002);
INSERT INTO Cart VALUES (2003, 5003);
INSERT INTO Cart VALUES (2004, 5004);
INSERT INTO Cart VALUES (2005, 5005);
INSERT INTO Cart VALUES (2006, 5006);
INSERT INTO Cart VALUES (2007, 5007);
INSERT INTO Cart VALUES (2008, 5008);
INSERT INTO Cart VALUES (2009, 5009);
INSERT INTO Cart VALUES (2010, 5010);


CREATE TABLE Payment (
PaymentID INT,
PaymentMode VARCHAR(100), DateOfPayment DATE, OrderID INT,
CustomerID INT, PRIMARY KEY(PaymentID),
FOREIGN KEY (OrderID) REFERENCES Order(OrderID),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Payment
VALUES (3546, 'Credit Card', TO_DATE('2024-05-01', 'YYYY-MM-DD'), 301, 5001);
INSERT INTO Payment
VALUES (2154, 'Cash on Delivery', TO_DATE('2024-05-02', 'YYYY-MM-DD'), 312, 5002);
INSERT INTO Payment
VALUES (8712, 'Online Banking', TO_DATE('2024-05-03', 'YYYY-MM-DD'), 324, 5003);
INSERT INTO Payment
VALUES (6983, 'Debit Card', TO_DATE('2024-05-04', 'YYYY-MM-DD'), 335, 5004);
INSERT INTO Payment
VALUES (9427, 'Credit Card', TO_DATE('2024-05-05', 'YYYY-MM-DD'), 346, 5005);
INSERT INTO Payment
VALUES (5842, 'Cash on Delivery'TO_DATE(, '2024-05-06', 'YYYY-MM-DD'), 357, 5006);
INSERT INTO Payment
VALUES (3765, 'PayPal', TO_DATE('2024-05-07', 'YYYY-MM-DD'), 368, 5007);
INSERT INTO Payment
VALUES (1289, 'Online Banking', TO_DATE('2024-05-08', 'YYYY-MM-DD'), 379, 5008);
INSERT INTO Payment
VALUES (4931, 'Debit Card', TO_DATE('2024-05-09', 'YYYY-MM-DD'), 380, 5009);
INSERT INTO Payment
VALUES (6752, 'Credit Card', TO_DATE('2024-05-10', 'YYYY-MM-DD'), 391, 5010);


CREATE TABLE Order (
OrderID INT, OrderDate DATE, OrderAmount INT, CustomerID INT, PRIMARY KEY(OrderID),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Order
VALUES (301, TO_DATE('2024-03-24', 'YYYY-MM-DD'), 2000, 5001);
INSERT INTO Order
VALUES (312, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 60, 5002);
INSERT INTO Order
VALUES (324, TO_DATE('2024-03-26', 'YYYY-MM-DD'), 45, 5003);
INSERT INTO Order
VALUES (335, TO_DATE('2024-03-27', 'YYYY-MM-DD'), 100, 5004);
INSERT INTO Order
VALUES (346, TO_DATE('2024-03-28', 'YYYY-MM-DD'), 30, 5005);
INSERT INTO Order
VALUES (357, TO_DATE('2024-03-29', 'YYYY-MM-DD'), 1000, 5006);
INSERT INTO Order
VALUES (368, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 40, 5007);
INSERT INTO Order
VALUES (379, TO_DATE('2024-03-31', 'YYYY-MM-DD'), 45, 5008);
INSERT INTO Order
VALUES (380,TO_DATE('2024-04-01', 'YYYY-MM-DD'), 50, 5009);
INSERT INTO Order
VALUES (391, TO_DATE('2024-04-02', 'YYYY-MM-DD'), 60, 5010);


CREATE TABLE Category (
CategoryID INT, CategoryName VARCHAR(100), Description VARCHAR(255) , PRIMARY KEY(CategoryID)
);
INSERT INTO Category
VALUES (1, 'Electronics', 'Devices and accessories related to electronics.');
INSERT INTO Category
VALUES (2, 'Clothing', 'Apparel and fashion accessories.');
INSERT INTO Category
VALUES (3, 'Books', 'Books and literary works.');
INSERT INTO Category
VALUES (4, 'Home & Kitchen', 'Household items and kitchen appliances.');
INSERT INTO Category
VALUES (5, 'Sports & Outdoors', 'Sports equipment and outdoor gear.');
INSERT INTO Category
VALUES (6, 'Beauty & Personal Care', 'Beauty products and personal grooming items.');
INSERT INTO Category
VALUES (7, 'Toys & Games', 'Toys, games, and hobby-related items.');
INSERT INTO Category
VALUES (8, 'Furniture', 'Furniture and home decor accessories.');
INSERT INTO Category
VALUES (9, 'Automotive', 'Automotive parts and accessories.');
INSERT INTO Category
VALUES (10, 'Health & Wellness', 'Healthcare products and wellness supplements.');



CREATE TABLE Product (
ProductID INT,
ProductName VARCHAR(100), stock INT,
brand VARCHAR(100),
ProductDescription VARCHAR(255), MRP INT,
CategoryID INT, PRIMARY KEY(ProductID),
FOREIGN KEY(CategoryID) REFERENCES Category(CategoryID)
);
INSERT INTO Product
VALUES (987651, 'Smartphone', 100, 'Samsung', 'High-performance
smartphone', 800, 1);
INSERT INTO Product
VALUES (543222, 'Denim Jeans', 200, 'Levi''s', 'Men''s denim jeans', 50, 2);
INSERT INTO Product
VALUES (123463, 'Fiction Novel', 150, 'Penguin Books', 'Bestseller fiction novel', 10, 3);
INSERT INTO Product
VALUES (678614, 'Coffee Maker', 50, 'Keurig', 'Home coffee brewing machine', 100, 4);
INSERT INTO Product
VALUES (336575, 'Tennis Racket', 30, 'Wilson', 'Professional tennis racket', 150, 5);
INSERT INTO Product
VALUES (873556, 'Shampoo', 120, 'Pantene', 'Hair care shampoo', 15, 6);
INSERT INTO Product
VALUES (341687, 'Board Game', 80, 'Hasbro', 'Classic board game set', 30, 7);
INSERT INTO Product
VALUES (879681, 'Sofa', 40, 'IKEA', 'Living room sofa', 500, 8);
INSERT INTO Product
VALUES (243244, 'Car Battery', 60, 'Optima', 'Automobile battery', 200, 9);
INSERT INTO Product
VALUES (423471, 'Vitamin Supplements', 90, 'Nature Made', 'Health supplements', 20, 10);



CREATE TABLE OrderItems (
OrderID INT, ProductID INT, Quantity INT, Item_MRP INT,
PRIMARY KEY (OrderID,ProductID),
FOREIGN KEY (OrderID) REFERENCES Order(OrderID),
FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
INSERT INTO OrderItems VALUES (301, 987651, 2, 800);
INSERT INTO OrderItems VALUES (312, 543222, 3, 50);
INSERT INTO OrderItems VALUES (324,123463, 1, 10);
INSERT INTO OrderItems VALUES (335,678614, 2, 100);
INSERT INTO OrderItems VALUES (346, 336575, 1, 150);
INSERT INTO OrderItems VALUES (357, 873556, 1, 15);
INSERT INTO OrderItems VALUES (368,341687, 2, 30);
INSERT INTO OrderItems VALUES (379, 879681, 1, 500);
INSERT INTO OrderItems VALUES (380,243244, 2, 200);
INSERT INTO OrderItems VALUES (391,423471, 3, 20);



CREATE TABLE TakesFrom (
WarehouseNO INT, OrderID INT,
PRIMARY KEY(WarehouseNO,OrderID), FOREIGN KEY (WarehouseNO) REFERENCES
WareHouse(WarehouseNO),
FOREIGN KEY(OrderID) REFERENCES Order(OrderID)
);
INSERT INTO TakesFrom VALUES (11, 301);
INSERT INTO TakesFrom VALUES (12, 312);
INSERT INTO TakesFrom VALUES (13, 324);
INSERT INTO TakesFrom VALUES (14, 335);
INSERT INTO TakesFrom VALUES (15, 346);
INSERT INTO TakesFrom VALUES (16, 357);
INSERT INTO TakesFrom VALUES (17, 368);
INSERT INTO TakesFrom VALUES (18, 379);
INSERT INTO TakesFrom VALUES (19, 380);
INSERT INTO TakesFrom VALUES (20, 391);


CREATE TABLE TrackingDetails (
TrackingID INT, ExpectedShippingDate DATE, OrderStatus VARCHAR(100), OrderID INT,
PRIMARY KEY (TrackingID),
FOREIGN KEY(OrderID) REFERENCES Order(OrderID)
);
INSERT INTO TrackingDetails
VALUES (10011,TO_DATE( '2024-03-24', 'YYYY-MM-DD'), 'Processing', 301);
INSERT INTO TrackingDetails
VALUES (10012,TO_DATE( '2024-03-25', 'YYYY-MM-DD'), 'Shipped', 312);
INSERT INTO TrackingDetails
VALUES (10013, TO_DATE('2024-03-26', 'YYYY-MM-DD'), 'Delivered', 324);
INSERT INTO TrackingDetails
VALUES (10014, TO_DATE('2024-03-27', 'YYYY-MM-DD'), 'Processing', 335);
INSERT INTO TrackingDetails
VALUES (10015, TO_DATE('2024-03-28', 'YYYY-MM-DD'), 'Shipped', 346);
INSERT INTO TrackingDetails
VALUES (10016,TO_DATE( '2024-03-29', 'YYYY-MM-DD'), 'Delivered', 357);
INSERT INTO TrackingDetails
VALUES (10017, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 'Processing', 368);
INSERT INTO TrackingDetails
VALUES (10018, TO_DATE('2024-03-31', 'YYYY-MM-DD'), 'Shipped', 379);
INSERT INTO TrackingDetails
VALUES (10019, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 'Delivered', 380);
INSERT INTO TrackingDetails
VALUES (10020, TO_DATE('2024-04-02', 'YYYY-MM-DD'), 'Processing', 391);


CREATE TABLE Seller (
SellerID INT,
BusinessName VARCHAR(100), PhoneNO INT,
Location VARCHAR(100), PRIMARY KEY (SellerID)
);
INSERT INTO Seller
VALUES (101, 'Electronics Hub', 8234567890, 'Main Street');
INSERT INTO Seller
VALUES (202, 'Fashion Emporium', 6345678901, 'High Street');
INSERT INTO Seller
VALUES (303, 'Bookstore Inc.', 8456789012, 'Market Square');
INSERT INTO Seller
VALUES (404, 'Home Essentials', 7567890123, 'Park Avenue');
INSERT INTO Seller
VALUES (505, 'Sports Zone', 6678901234, 'Broadway');
INSERT INTO Seller
VALUES (606, 'Beauty Boutique', 6789012345, 'Sunset Boulevard');
INSERT INTO Seller
VALUES (707, 'Toy Palace', 7890123456, 'Central Plaza');
INSERT INTO Seller
VALUES (808, 'Furniture Galore', 8901234567, 'Oak Street');
INSERT INTO Seller
VALUES (909, 'Auto Parts Plus', 9012345678, 'Main Road');
INSERT INTO Seller
VALUES (1010, 'Health Haven', 9876543210, 'Elm Street');




CREATE TABLE Supplied_to (
SellerID INT, WarehouseNO INT,
PRIMARY KEY(SellerID, WarehouseNO),
FOREIGN KEY (SellerID) REFERENCES Seller(SellerID), FOREIGN KEY (WarehouseNO) REFERENCES
WareHouse(WarehouseNO)
);
INSERT INTO Supplied_to VALUES (101, 11);
INSERT INTO Supplied_to VALUES (202, 12);
INSERT INTO Supplied_to VALUES (303, 13);
INSERT INTO Supplied_to VALUES (404, 14);
INSERT INTO Supplied_to VALUES (505, 15);
INSERT INTO Supplied_to VALUES (606, 16);
INSERT INTO Supplied_to VALUES (707, 17);
INSERT INTO Supplied_to VALUES (808, 18);
INSERT INTO Supplied_to VALUES (909, 19);
INSERT INTO Supplied_to VALUES (1010, 20);



CREATE TABLE Warehouse (
WarehouseNO INT, Location VARCHAR(100),
PRIMARY KEY(WarehouseNO)
);
INSERT INTO Warehouse VALUES (11, 'Downtown');
INSERT INTO Warehouse VALUES (12, 'Industrial Park');
 INSERT INTO Warehouse VALUES (13, 'Waterfront');
 INSERT INTO Warehouse VALUES (14, 'Suburbs');
INSERT INTO Warehouse VALUES (15, 'Business District'); 
INSERT INTO Warehouse VALUES (16, 'Airport Zone'); 
INSERT INTO Warehouse VALUES (17, 'Tech Hub');
 INSERT INTO Warehouse VALUES (18, 'Harbor');
INSERT INTO Warehouse VALUES (19, 'Commercial Center'); 
INSERT INTO Warehouse VALUES (20, 'Shopping Mall');




