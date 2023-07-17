
create database customer_manager;
use customer_manager; 

CREATE TABLE customer (
    id_client BIGINT  PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(12),
    phone VARCHAR(20),
    email VARCHAR(255)

);


CREATE TABLE plan_subscription (
    id_plan  BIGINT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(255),
	plan_description TEXT,
    montly_price DECIMAL(10, 2)

);


CREATE TABLE subscription (
    id_suscription  BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_client BIGINT ,
    id_plan BIGINT ,
    start_date DATE,
    expiry_date DATE,

    FOREIGN KEY (id_client) REFERENCES customer(id_client),
    FOREIGN KEY (id_plan) REFERENCES plan_subscription(id_plan)
);


INSERT INTO customer (first_name, last_name, address, city, state, postal_code, phone, email)
VALUES ('Juan', 'Gómez', 'Carrera 123', 'Bogotá', 'Cundinamarca', '110010', '310-1234567', 'juan.gomez@example.com');

INSERT INTO customer (first_name, last_name, address, city, state, postal_code, phone, email)
VALUES ('María', 'López', 'Calle 456', 'Medellín', 'Antioquia', '050012', '320-9876543', 'maria.lopez@example.com');


INSERT INTO plan_subscription (plan_name, plan_description, montly_price)
VALUES ('Básico', 'Plan de suscripción básico', 9.99);

INSERT INTO plan_subscription (plan_name, plan_description, montly_price)
VALUES ('Premium', 'Plan de suscripción premium', 19.99);


INSERT INTO subscription (id_client, id_plan, start_date, expiry_date)
VALUES (1, 1, '2023-01-01', '2023-12-31');

INSERT INTO subscription (id_client, id_plan, start_date, expiry_date)
VALUES (2, 2, '2023-02-01', '2023-12-31');
