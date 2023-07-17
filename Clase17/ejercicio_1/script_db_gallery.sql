create database gallery;

use gallery;

CREATE TABLE category (
id_category  BIGINT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR (100)
);
CREATE TABLE album (
id_album BIGINT  PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR (100),
id_category BIGINT

);


CREATE TABLE photo (
id_photo BIGINT  PRIMARY KEY AUTO_INCREMENT,
capure_date DATETIME,
file_name VARCHAR (255),
save_path VARCHAR (255),
file_size bigint(40),
id_album BIGINT
);

CREATE TABLE favorite (
id_favorite  BIGINT PRIMARY KEY AUTO_INCREMENT,
id_photo BIGINT
);

CREATE TABLE trash (
id_trash BIGINT  PRIMARY KEY AUTO_INCREMENT,
id_photo BIGINT
);

CREATE TABLE tag (
id_tag BIGINT PRIMARY KEY AUTO_INCREMENT,
tag_name VARCHAR(100),
tag_description TEXT
);

CREATE TABLE photo_tag (
id_photo BIGINT,
id_tag BIGINT

);



ALTER TABLE photo
ADD CONSTRAINT fk_photo_album
FOREIGN KEY (id_album) REFERENCES album (id_album);

ALTER TABLE favorite
ADD CONSTRAINT fk_favorite_photo
FOREIGN KEY (id_photo) REFERENCES photo (id_photo);

ALTER TABLE album
ADD CONSTRAINT fk_album_category
FOREIGN KEY (id_category) REFERENCES category (id_category);

ALTER TABLE trash
ADD CONSTRAINT fk_trash_photo
FOREIGN KEY (id_photo) REFERENCES photo(id_photo);

ALTER TABLE photo_tag
ADD CONSTRAINT fk_phototag_photo
FOREIGN KEY (id_photo) REFERENCES photo(id_photo);

ALTER TABLE photo_tag
ADD CONSTRAINT fk_phototag_tag
FOREIGN KEY (id_tag) REFERENCES tag(id_tag);