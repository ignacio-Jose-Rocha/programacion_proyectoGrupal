create database peluqueria_canina;
use peluqueria_canina;

create table Dueno
(
DNI int primary key not null,
Nombre varchar(20),
Apellido varchar(20),
Telefono int,
Direccion varchar(40)
);

create table Perro
(
ID_Perro int primary key not null auto_increment,
Nombre varchar(20),
Fecha_nac date,
Sexo varchar(1),
DNI_dueno int not null,
Foreign key (DNI_dueno) References Dueno (DNI)
);

create table Historial
(
ID_Historial int primary key not null auto_increment,
Fecha date,
Perro int not null,
Foreign key (Perro) References Perro (ID_Perro),
Descripcion varchar(100),
Monto int
);



