CREATE DATABASE IF NOT exists Editorial;
use Editorial;
/*TABLA 1*/

CREATE TABLE Autor (
id_AUTOR INT PRIMARY KEY auto_increment,
nombre VARCHAR (100) NOT NULL,
apellidos varchar (100) not null,
nacionalidad varchar(150) not null,
correo varchar (100) not null unique,
fecha_de_nacimiento date not null
/*TABLA 2*/
);
create table Publicación (
id_Publicación INT PRIMARY KEY auto_increment,
título varchar (100) not null,
numero_de_pagina varchar(100) not null,
fecha_de_publicación date not null,
idioma varchar (100)
);
CREATE TABLE Publicación_Autor(
id_Publicación_Autor INT PRIMARY KEY auto_increment,
id_autor INT not null,
id_Publicación INT not null,
nombre varchar(100) NOT NULL,
fecha_de_publicación date not null,

constraint fk_AUTOR FOREIGN KEY (id_AUTOR) REFERENCES AUTOR (id_AUTOR),
constraint fk_Publicación foreign key (id_Publicación) references Publicación (id_Publicación)
);
INSERT INTO Autor (nombre,apellidos,id_Autor,nacionalidad,fecha_de_nacimiento,correo)
VALUES (101,'MATEO','Ramirez','Colombia','1998-05-14','Definido');

