CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Authors (
    Author_id INT PRIMARY KEY,
    Author_name VARCHAR(215)
);

CREATE TABLE Books (
    Book_id INT PRIMARY KEY,
    Title VARCHAR(130),
    Author_id INT,
    Price DOUBLE,
    Publication_date DATE,
    FOREIGN KEY (Author_id) REFERENCES Authors(Author_id)
);

CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Customer_name VARCHAR(215),
    Email VARCHAR(215),
    Address TEXT
);

CREATE TABLE Orders (
    Order_id INT PRIMARY KEY,
    Customer_id INT,
    Order_date DATE,
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

CREATE TABLE Order_details (
    Order_detail_id INT PRIMARY KEY,
    Order_id INT,
    Book_id INT,
    Quantity DOUBLE,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);
