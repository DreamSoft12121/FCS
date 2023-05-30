
create database data_ds;

use data_ds;

create table users (
  id_user int auto_increment primary key,
  username varchar(50),
  password varchar(50),
  name varchar(50),
  role varchar(20)
);

create table archivos_pdf (
  id int auto_increment primary key,
  nombre varchar(255) not null,
  ruta varchar(255) not null,
  id_user int,
  foreign key (id_user) references users(id_user) on update cascade on delete cascade
);

insert into users (username, password, name, role)
values ('AdminBety32', 'adminpassword', 'Bety', 'admin');

-- INSERT INTO archivos_pdf (id, nombre, ruta, id_user)
-- VALUES (1, 'file1', 'E:/file1', 1);

-- select name.users from users where id_user.name = id_user.id;

select * from users,archivos_pdf where users.id_user = archivos_pdf.id_user;