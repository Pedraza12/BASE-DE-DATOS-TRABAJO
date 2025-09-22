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
id_autor INT PRIMARY KEY AUTO_INCREMENT,
id_Publicación INT PRIMARY KEY auto_increment,
id_Publicación_Autor INT PRIMARY KEY auto_increment,
nombre varchar(100) NOT NULL,
fecha_de_publicación date not null,

constraint fk_AUTOR FOREIGN KEY (id_AUTOR) REFERENCES AUTOR (id_AUTOR),
constraint fk_Publicación foreign key (id_Publicación) references AUTOR (id_Publicación)
);

