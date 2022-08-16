# participantes
# ignacio jose rocha ignac1997nacho@gmail.com
# Magali Maribel Garcia magalimaribelgarcia@gmail.com
# Dario Barboso dariovictorbarboso@hotmail.com
# Yanela Evelina Tabares tabaresyane@gmail.com
# Juan Manuel Garcia Vogel juanmgv21@gmail.com
# Silvia Congilio sconiglio78@gmail.com
# Juan Pablo Garcia juanpablogarcia796@gmail.com
# Noelia Aguirre noeaguirre097@gmail.com
# Valeriya Lysikova v.lysikova@gmail.com

DROP DATABASE Peluqueria_canina;
CREATE DATABASE Peluqueria_canina;

USE Peluqueria_canina;

CREATE table DUENOS (
  DNI VARCHAR(30) NOT NULL,
  Nombre VARCHAR(50) NULL,
  Apellido VARCHAR(50) NULL,
  Telefono VARCHAR(45) NULL,
  Direccion VARCHAR(70) NULL,
 CONSTRAINT PK_DI PRIMARY KEY(DNI)
  );
 
INSERT INTO DUENOS VALUES ("29030728", "Juan Carlos", "Espindola","351727272", "Jamaica 387");
INSERT INTO DUENOS VALUES ("12121212", "Roberto", "Perez","35122222", "Caseros 120");
INSERT INTO DUENOS VALUES ("13131313", "Pedro", "Lalei","35133333", "Laprida 567");
INSERT INTO DUENOS VALUES ("14141414", "Daniel", "Retamin","35144444", "Cantin 12");
INSERT INTO DUENOS VALUES ("15151515", "Pedro", "Verlo","35555555", "Saltin 222"); 
  
  
  CREATE TABLE PERRO (
	Id_Perro INT NOT NULL AUTO_INCREMENT,
	Nombre1 VARCHAR(45) NULL,
	Fecha_nacimiento DATE NULL,
	Sexo VARCHAR(30) NULL,
	DNI_1 VARCHAR(30) NOT NULL,
	CONSTRAINT PK_IP PRIMARY KEY (Id_Perro),
    CONSTRAINT FK_D1 FOREIGN KEY (DNI_1) REFERENCES DUENOS (DNI) 
	);
    
INSERT INTO PERRO VALUES ("1", "DOGI", "2022/10/10","MACHO", "29030728");
INSERT INTO PERRO VALUES ("2", "TOGI", "2018/10/10","HEMBRA", "12121212");
INSERT INTO PERRO VALUES ("3", "POGI", "2017/10/10","MACHO", "13131313");
INSERT INTO PERRO VALUES ("4", "LOGI", "2016/10/10","MACHO", "14141414");
INSERT INTO PERRO VALUES ("5", "ROGI", "2014/10/10","HEMBRA", "15151515");

   
CREATE TABLE HISTORIAL (
Id_historial INT NOT NULL AUTO_INCREMENT,
Fecha DATE NULL,
Id_Perro_1  INT(30) NULL, 
Descripcion VARCHAR (50) NULL,
Monto INT NULL,
CONSTRAINT PK_IH PRIMARY KEY (Id_historial),
CONSTRAINT FK_IP1 FOREIGN KEY (Id_Perro_1) REFERENCES PERRO (Id_Perro)
);


INSERT INTO HISTORIAL VALUES (1,"2022/03/03",1,"Vacunación",1000);
INSERT INTO HISTORIAL VALUES (2,"2019/05/04",2,"castracíon", 3500);
INSERT INTO HISTORIAL VALUES (3,"2020/08/03",3,"Decaimiento falta de vitaminas", 1200);
INSERT INTO HISTORIAL VALUES (4,"2018/03/05",4,"Internacion por herida", 4300);
INSERT INTO HISTORIAL VALUES (5,"2016/04/03",3,"Vacunacion ", 1000);
INSERT INTO HISTORIAL VALUES (6,"2022/04/03",2,"Peluqueria ", 600);
INSERT INTO HISTORIAL VALUES (7,"2022/05/03",3,"Peluqueria ", 600);
INSERT INTO HISTORIAL VALUES (8,"2022/07/03",5,"Peinado ", 800);


DELETE FROM HISTORIAL WHERE Id_historial=5;
UPDATE PERRO SET Fecha_nacimiento = "2021/10/10" WHERE Id_perro = 1;
SELECT Nombre1 FROM PERRO INNER JOIN DUENOS ON PERRO.DNI_1 = DUENOS.DNI WHERE Nombre = "Pedro";
SELECT  Nombre1 FROM PERRO INNER JOIN HISTORIAL ON HISTORIAL.Id_Perro_1 = PERRO.Id_perro WHERE FECHA >= "2022/01/01";
SELECT Monto FROM Historial WHERE Fecha >= "2022/07/01" AND Fecha < "2022/08/01";
INSERT INTO HISTORIAL VALUES (10,"2022/07/05",3,"antestecia ", 800);
UPDATE Duenos SET Direccion = "Libertad 123" WHERE DNI = "13131313";
DELETE FROM HISTORIAL WHERE ID_HSTORIAL > 0;
SELECT Nombre FROM DUENOS INNER JOIN PERRO ON PERRO.DNI_1 = DUENOS.DNI INNER JOIN HISTORIAL ON HISTORIAL.ID_PERRO_1 = PERRO.Id_Perro WHERE Fecha_nacimiento > "2018/01/01" AND Fecha <= "2022/01/01";
SELECT Nombre1 FROM PERRO WHERE Fecha_nacimiento >="2020/01/01" AND Fecha_nacimiento < "2023/01/01" AND Sexo = "Macho";


