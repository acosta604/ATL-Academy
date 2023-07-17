create database menu;
use menu;

CREATE TABLE category(
id_category BIGINT PRIMARY KEY AUTO_INCREMENT,
category_name  VARCHAR (100) NOT NULL,
id_parent BIGINT

);


CREATE TABLE item(
id_item BIGINT PRIMARY KEY AUTO_INCREMENT,
item_name varchar (100),
id_category BIGINT

);

ALTER TABLE category
ADD CONSTRAINT fk_parentcategory
FOREIGN KEY (id_parent) REFERENCES  category (id_category);

ALTER TABLE item
ADD CONSTRAINT fk_item_category
FOREIGN KEY (id_category) REFERENCES  category (id_category);


INSERT INTO category (category_name, id_parent)
VALUES ('Lenguajes de Programación', NULL),
       ('Frameworks', NULL),
       ('Bases de Datos', NULL),
       ('Frontend', 1),
       ('Backend', 1),
       ('Web', 2),
       ('Mobile', 2),
       ('Relacionales', 3),
       ('NoSQL', 3),
       ('HTML', 4),
       ('CSS', 4),
       ('JavaScript', 4),
       ('Java', 5),
       ('Python', 5),
       ('React', 6),
       ('Angular', 6),
       ('MySQL', 7),
       ('PostgreSQL', 7),
       ('MongoDB', 8),
       ('Firebase', 8);


INSERT INTO item (item_name, id_category)
VALUES ('HTML5', 10),
       ('CSS3', 11),
       ('JavaScript ES6', 12),
       ('Java SE', 13),
       ('Python 3', 14),
       ('React.js', 15),
       ('AngularJS', 16),
       ('MySQL', 17),
       ('PostgreSQL', 18),
       ('MongoDB', 19),
       ('Firebase Realtime Database', 20);


/*
Lenguajes de Programación
├── Frontend
│   ├── HTML
│   ├── CSS
│   └── JavaScript
└── Backend
    ├── Java
    └── Python
Frameworks
├── React
└── Angular
Bases de Datos
├── Relacionales
│   ├── MySQL
│   └── PostgreSQL
└── NoSQL
    ├── MongoDB
    └── Firebase
*/