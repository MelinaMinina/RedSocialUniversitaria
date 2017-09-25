create database UC;

use UC;

create table  alumnos(
id_alumno int not null primary key,
nombre_alumno varchar(45) not null,
carrera varchar(45) not null,
telefono int 
);

create table fecha(
fecha_nacimiento date,
id_alumno int not null, 


constraint fkfecha_alumnos
foreign key (id_alumno)
references alumnos(id_alumno)
);

