drop database if exists login_example;
CREATE DATABASE login_example;

USE login_example;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(50),
  name VARCHAR(50),
  role VARCHAR(20)
);

CREATE TABLE archivos_pdf (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  ruta VARCHAR(255) NOT NULL
);

INSERT INTO users (username, password, name, role)
VALUES ('user1', 'password1', 'User 1', 'user');

INSERT INTO users (username, password, name, role)
VALUES ('admin1', 'password1', 'Admin 1', 'admin');
