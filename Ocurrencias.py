myArray = [1,2,2,4,5,6,7,8,8,8]

# CONFIRMAR RANGO DE ELEMENTOS EN LISTA ENTRE LOS VALORES DE 1 A 9.
if all(x > 0 and x < 10 for x in myArray):
        
        # IDENTIFICAR EL NUMERO QUE MAS VECES PRESENTA OCURRENCIA DENTRO DE LA LISTA DE ELEMENTOS.
        Number = max(set(myArray), key = myArray.count)

        # VALIDAR NUMERO CON MAYOR OCURRENCIA DENTRO DE LA LISTA.
        Longest = myArray.count(Number)
        
        print(f'Longest: ', Longest)
        print(f'Number : ', Number)

else:
        print(f'LA LISTA CONTIENE ELEMENTOS DIFERENTES AL RANGO ACEPTADO. POR FAVOR VALIDAR LO ANTERIOR. GRACIAS.')