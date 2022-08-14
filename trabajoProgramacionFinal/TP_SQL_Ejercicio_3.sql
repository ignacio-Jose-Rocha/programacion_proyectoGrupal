declare @perroID int;


select  @perroID = ID_Perro from Perro where ID_Perro in (select Perro from Historial group by perro having DATEDIFF(YEAR,max(fecha),'2022') >0 and Perro =ID_Perro );

delete from Historial where Perro =@perroID; 
delete from Perro where ID_Perro =@perroID;