"""Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:

   7510, 7960, 76180, 800, 4100
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla."""

historial4 = [7510, 7960, 76180, 800, 4100]

def buscarMin (montos):
  min = historial4[0]

  for i in montos:
    if i < min:
      min = i
  return min

print( "El valor mínimo de atención gastada en “Olivia” es de $",  buscarMin(historial4))
     


 