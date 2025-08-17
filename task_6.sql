-- task_6.sql
-- Insert multiple rows into the customer table

USE alx_book_store;

INSERT INTO customer (customer_id, customer_name, email, address)
VALUES 
    (2, 'Natnael Abebe', 'n.abebe@sandtech.com', '124 Happiness  Ave.'),
    (3, 'Debebe Bultu', 'd.bultu@sandtech.com', '125 Happiness  Ave.'),
    (4, 'Salelew Teshome', 's.teshome@sandtech.com', '126 Happiness  Ave.');

