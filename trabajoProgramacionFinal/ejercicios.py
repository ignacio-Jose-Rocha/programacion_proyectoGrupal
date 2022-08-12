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

print("ejercicio 3 - ignacio rocha")
Perro = [13, "puppy", "12/12/2012", "macho", 123]
Perro[2] = "13/12/2012"
Perro[4] = 28957346
print(Perro)

print("ejercicio 6 - ignacio rocha")
historial2 = (23500, 5960, 2300, 10200, 8900)
suma = 0
for i in historial2:
    suma += i
print(suma)


def calcularLimite(historial2):
    suma = 0

    for i in historial2:
        if i > 5000:
            suma += 1
    return suma


print("la cantidad de valores que superan 5000 son: ", calcularLimite(historial2))
