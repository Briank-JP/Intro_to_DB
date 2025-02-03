CREATE DATABASE alx_book_store;

USE alx_book_store;

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    price DOUBLE,
    publication_date DATE,
    author_id INT, 
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT
);
CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE ,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
   quantity DOUBLE,
   book_id INT,
   order_id INT,
   FOREIGN KEY (book_id) REFERENCES Books(book_id),
   FOREIGN KEY (order_id) REFERENCES Orders(order_id)