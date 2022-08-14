create database peluqueria_canina ;
use peluqueria_canina;

create  table  Dueno
(
DNI int  not null ,
Nombre varchar ( 20 ),
Apellido varchar ( 20 ),
Teléfono int ,
Dirección varchar ( 40 )
);

create  table  Perro
(
ID_Perro int not null  auto_increment,
Nombre varchar ( 20 ),
Fecha_nac date ,
Sexo varchar ( 1 ),
DNI_dueno int  not null ,
foreign key (DNI_dueno) References Dueno (DNI)
);

create  table  Historial
(
ID_Historial int  not null auto_increment,
Fecha date ,
Perro int  not null ,
foreign key (Perro) References Perro (ID_Perro),
Descripcion varchar ( 100 ),
monto int
);

# ### Solucion Ejercicio 2:
insert into Dueno (DNI, Nombre, Apellido, Telefono , Direccion)
values ( ' 28245961 ' , ' Cintia ' , ' Gómez ' , ' 42876592 ' , ' Av. Yrigoyen 123 ' );

iNSERT into Perro ( Nombre, Fecha_nac, Sexo, DNI_dueno)
values ( ' Patrick ' , ' 1980-02-02 ' , ' m ' , ' 25717486 ' );

insert into Perro ( Nombre, Fecha_nac, Sexo, DNI_dueno)
values ( ' Roy ' , ' 2010-07-10 ' , ' m ' , ' 28245961 ' );


INSERT into Dueno (DNI, Nombre, Apellido, Telefono , Direccion)
Values ( ' 25717486 ' , ' Juan ' , ' Pérez ' , ' 256555 ' , ' dsfsfsf ' );

# ### solucion ejercico 9:
UPDATE Dueno
SET Direccion = "Libertad 123"
WHERE DNI = 25717486