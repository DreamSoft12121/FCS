
create database Data_DS;

use Data_DS;

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
VALUES ('AdminBety32', 'adminpassword', 'Bety', 'admin');

-- INSERT INTO archivos_pdf (id, nombre, ruta, id_user)
-- VALUES (1, 'file1', 'E:/file1', 1);

-- select name.users from users where id_user.name = id_user.id;

select * from users,archivos_pdf where users.id_user = archivos_pdf.id_user;