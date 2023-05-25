
drop database if exists BDfcs;
create database BDfcs;

use BDfcs;

-- Se crean las tablas correspondientes

 create table ROL(

Rol varchar(40) not null,
descripcion varchar(40),
primary key (Rol));



create table Usuario(
idEmple int auto_increment,
correo varchar(40),
nomemple varchar(40),
password varchar (40),
Rol varchar(40),
primary key(idEmple),
foreign key (Rol) references ROL (Rol));



create table Formulario(
idForm int auto_increment,
fecha date,
url varchar (60),
idEmple int,
primary key (idForm),
foreign key (idEmple) references Usuario (idEmple));

create table ROl_Usuario(
Rol varchar (40),
idEmple int ,
foreign key (Rol) references ROL (Rol),
foreign key (idEmple) references Usuario (idEmple));



