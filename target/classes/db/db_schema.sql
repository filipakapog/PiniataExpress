create database if not exists piniata_expo;
use piniata_expo;

CREATE TABLE piniata_expo.user
(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  pass VARCHAR(25) NOT NULL
);

CREATE TABLE piniata_expo.admin
(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  pass VARCHAR(255) NOT NULL
);

CREATE TABLE piniata_expo.product
(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  price DECIMAL(5,2) NOT NULL,
  description VARCHAR(500),
  name VARCHAR(255) NOT NULL
);

CREATE TABLE piniata_expo.stock
(
  id_product INT PRIMARY KEY NOT NULL,
  quantity INT NOT NULL,
  CONSTRAINT stock_product_id_fk FOREIGN KEY (id_product) REFERENCES product (id)
);

CREATE TABLE piniata_expo.client_data
(
  id_user INT PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  delivery_address VARCHAR(255),
  billing_address VARCHAR(255),
  CONSTRAINT client_data_user_id_fk FOREIGN KEY (id_user) REFERENCES user (id)
);

CREATE TABLE piniata_expo.`order`
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  order_no INT NOT NULL,
  id_user INT NOT NULL,
  id_product INT NOT NULL,
  quantity INT NOT NULL,
  date DATE NOT NULL,
  CONSTRAINT order_product_id_fk FOREIGN KEY (id_product) REFERENCES product (id),
  CONSTRAINT order_user_id_fk FOREIGN KEY (id_user) REFERENCES user (id)
);