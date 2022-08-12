create database peluqueria_canina;
use peluqueria_canina;

create table Dueno
(
DNI int primary key not null,
Nombre integer,
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
Perro integer,
Foreign key (Perro) References Perro (ID_Perro),
Descripcion varchar(100),
Monto int
);

-- Punto 2 

INSERT INTO Perro ( Nombre, Fecha_nac, Sexo, DNI_dueno)
values ('Patrick', '1980-02-02', 'm', '25717486');

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono , Direccion)
Values ('25717486', 'Juan', 'Perez', '256555', 'dsfsfsf');

