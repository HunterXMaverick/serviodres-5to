drop database Escuela;
drop  table Alumnos; 

#Creacion de Base de datos
create database Escuela;
use Escuela;

#creacion de tablas 
 create table Personas (
 id_personas int not null auto_increment,
 nombre varchar(20) not null,
 apellido varchar(20) not null,
 edad int not null,
 primary key(id_personas)
 );
 
 #sentencias SQL
 
 #Insetar Datos
 insert into Personas(nombre, apellido, edad) values ('Juan', 'Silva', 21);
 insert into Personas(nombre, apellido, edad) values ('Kevin', 'Roman', 19);
 
#leer Datos
 select * from Personas;
 
 #actualizar datos
update Personas set nombre = 'henry' where id = 1;
update Personas set nombre = 'jona' where id=2;
update Personas set nombre = 'juan', apellido= 'ortega' where id=4;

/*Borrar Datos*/

 truncate Personas;
 
 delete from Personas where id < 3;
 
 create table Alumnos (
 id_alumno int not null auto_increment,
 grado varchar(20)not null,
 idPersonas int null,
 primary key (id_alumno),
 foreign key (id_alumno) references Personas(id_personas)
 );