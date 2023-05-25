drop database if exists login_example;
CREATE DATABASE login_example;

USE login_example;

CREATE TABLE users (
  id_user INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(50),
  name VARCHAR(50),
  role VARCHAR(20)
);

CREATE TABLE archivos_pdf (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  ruta VARCHAR(255) NOT NULL,
  id_user int,
  foreign key (id_user) references users(id_user) on update cascade on delete cascade
);

INSERT INTO users (username, password, name, role)
VALUES ('user1', 'password1', 'User 1', 'user');

INSERT INTO users (username, password, name, role)
VALUES ('admin1', 'password1', 'Admin 1', 'admin');

-- INSERT INTO archivos_pdf (id, nombre, ruta, id_user)
-- VALUES (1, 'file1', 'E:/file1', 1);

-- select name.users from users where id_user.name = id_user.id;

select * from users,archivos_pdf where users.id_user = archivos_pdf.id_user;