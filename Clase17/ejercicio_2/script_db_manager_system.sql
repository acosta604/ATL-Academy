create database manager_system;
use manager_system;

CREATE TABLE users(
id_user BIGINT PRIMARY KEY AUTO_INCREMENT,
first_name  VARCHAR (200) NOT NULL,
last_name  VARCHAR (200) NOT NULL,
username VARCHAR (100) NOT NULL,
user_password VARCHAR (30) NOT NULL,
email VARCHAR (255) NOT NULL,
creation_date  DATE,
last_access_date DATE

);
CREATE TABLE roles (
id_role BIGINT PRIMARY KEY AUTO_INCREMENT,
role_name VARCHAR (200) NOT NULL,
role_description TEXT
);

CREATE TABLE permissions (
id_permission BIGINT PRIMARY KEY AUTO_INCREMENT,
permision_name VARCHAR (200),
permission_description TEXT
);


CREATE TABLE user_role (
id_user BIGINT,
id_role BIGINT,
FOREIGN KEY (id_role) REFERENCES roles(id_role),
FOREIGN KEY (id_user) REFERENCES users(id_user)
);

CREATE TABLE permission_role(
id_permission BIGINT,
id_role BIGINT,
FOREIGN KEY (id_permission) REFERENCES permissions(id_permission),
FOREIGN KEY (id_role) REFERENCES roles(id_role)
);


INSERT INTO users (first_name, last_name, username, user_password, email, creation_date, last_access_date)
VALUES ('John', 'carlos', 'perez', 'password123', 'john@example.com', '2023-01-01', '2023-07-16'),
       ('katerina', 'johana', 'ivanovna', 'abc123', 'jane@example.com', '2023-02-15', '2023-07-16');

INSERT INTO roles (role_name, role_description)
VALUES ('Admin', 'Administrator role with full access'),
       ('Editor', 'Role with editing permissions'),
       ('Viewer', 'Role with view-only permissions');
       
INSERT INTO permissions (permision_name, permission_description)
VALUES ('Create', 'Permission to create content'),
       ('Edit', 'Permission to edit content'),
       ('Delete', 'Permission to delete content');
