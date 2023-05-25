Drop database if exists Empleadosfcs2;
create database Empleadosfcs2;
use Empleadosfcs2;

create table Usuario(  
correo varchar (20) primary key not null,
nom_emple varchar (20),
password varchar (20));

-- insert into Usuario (correo, nom_emple, password)
-- values
-- ("correo1@gmail.com","Adrian","ania1"),
-- ("correo2@gmail.com","Dylan","ania2"),
-- ("correo3@gmail.com","Jorge","ania3"),
-- ("correo4@gmail.com","Axel","ania4"),
-- ("correo5@gmail.com","Cesar","ania5"),
-- ("correo6@gmail.com","Gael","ania6"),
-- ("correo7@gmail.com","Vargas","ania7"),
-- ("correo8@gmail.com","Joahan","ania8"),
-- ("correo9@gmail.com","Luis","ania9"),
-- ("correo10@gmail.com","Nicolas","ania10");

create table Formulario(  
id_form int primary key not null,
fecha date,
url varchar (30),
correo varchar (20),
foreign key (correo) references Usuario (correo) on update cascade on delete cascade);

-- insert into Formulario (id_form, fecha ,correo)
-- values
-- (1,'2023-05-12',"correo6@gmail.com"),
-- (2,'2023-04-13',"correo5@gmail.com"),
-- (3,'2023-04-14',"correo6@gmail.com"),
-- (4,'2023-04-15',"correo4@gmail.com"),
-- (5,'2023-04-16',"correo9@gmail.com"),
-- (6,'2023-04-17',"correo7@gmail.com"),
-- (7,'2023-04-18',"correo1@gmail.com"),
-- (8,'2023-04-19',"correo2@gmail.com"),
-- (9,'2023-04-20',"correo3@gmail.com"),
-- (10,'2023-04-21',"correo8@gmail.com");

-- select * from Usuario;

-- select * from Formulario;