create database UC;
use UC;
/* creacion de la tabla alumnos*/
create table  alumnos(
matricula int not null primary key,
nombre_alumno varchar(45) not null,
carrera varchar(45) not null,
telefono int, 
contraseña varchar(50)not null,
fecha_nacimiento date, 
fecha_de_registro date,
sexo varchar(45)not null,
facultad varchar(60) not null
);
/*creacion de la tabla para las  publicaciones */
create table publicaciones(
id_publicacion int not null primary key,
matricula int not null,
texto varchar (1000)not null,
constraint fkmensajes_alumnos
foreign key (matricula)
references alumnos (matricula)
);

/* envio de mensajes id es para identificar el destinatario
'completar esta seccion antes de crear la tabla'*/
create table mensajesEnvio(
id_mensaje int not null,
matricula int not null,
mensaje varchar (45)not null,
constraint fkmensajes_alumnos
foreign key (matricula)
references alumnos (matricula)
);