create database if not exists peluqueria_canina;
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
Nombre varchar(10),
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
Descripcion varchar (100),
Monto int,
Foreign key (Perro) References Perro (ID_Perro)
);


insert into dueno values ('31524766', 'Agustina', 'Perez', '1554874658', 'av.Callao 201');

insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno)
values ('Copito', '2018-09-26', 'M', '31524766');

-- ejercicio 7
select Monto as Ingresos from Historial
where Fecha between '2022-07-01' and '2022-07-31';















