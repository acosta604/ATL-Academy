create database inventory_control;
use inventory_control;

CREATE TABLE product (
    id_product BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    quantity_available INT,
    id_storage_location BIGINT,
    id_supplier BIGINT,
    price DECIMAL(10, 2),
    acquisition_date DATE,
    FOREIGN KEY (id_storage_location) REFERENCES storage_location(id_location),
    FOREIGN KEY (id_supplier) REFERENCES supplier(id_supplier)
);


CREATE TABLE storage_location (
    id_location BIGINT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100),
    description TEXT
);


CREATE TABLE supplier (
    id_supplier BIGINT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);



CREATE TABLE transaction_data (
    id_transaction BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_product  BIGINT,
    transaction_type VARCHAR(50),
    transaction_date DATE,
    quantity INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (id_product) REFERENCES product(id_product)
);


INSERT INTO storage_location (location_name, description)
VALUES ('Warehouse A', 'Main warehouse for finished products');

INSERT INTO storage_location (location_name, description)
VALUES ('Warehouse B', 'Secondary warehouse for raw materials');


INSERT INTO supplier (supplier_name, phone, email)
VALUES ('Fabric Supplier', '123456789', 'fabricsupplier@example.com');

INSERT INTO product (name, description, quantity_available, id_storage_location, id_supplier, price, acquisition_date)
VALUES ('T-shirt', 'Cotton t-shirt with round neck', 100, 1, 1, 10.99, '2023-07-01');

INSERT INTO product (name, description, quantity_available, id_storage_location, id_supplier, price, acquisition_date)
VALUES ('Jeans', 'Blue denim jeans with straight fit', 50, 2, 1, 29.99, '2023-07-02');

INSERT INTO transaction_data (id_product, transaction_type, transaction_date, quantity, total_amount)
VALUES (3, 'Purchase', '2023-07-03', 20, 219.80);

INSERT INTO transaction_data (id_product, transaction_type, transaction_date, quantity, total_amount)
VALUES (4, 'Sale', '2023-07-04', 10, 299.90);
