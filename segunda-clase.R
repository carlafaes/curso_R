##VECTORES
##utilizamo las funcion c() para crear vectores
##no pueden mezclar tipos de datos, o son numericos, o caracteres o booleanos
##vector numerico c(1,2,3,4,5)
##vector tipo caracter c("nombre1","nombre2","nombre3")
##vector tipo booleano c(true,false)

# video 05 - vectores

# Objetivo: estudiar qué es una vector en R.
# --------------------------------------------
# En este ejercicio vamos a:
# 1. Crear vectores en un script
# 2. Realizar opraciones aritméticas con vectores
# 3. Seleccionar elementos en un vector


#####################################
# práctica 1: creando vectores en R #
#####################################

# crear vector carácter con nombre de las películas
nombre <- c("Shrek","Shrek 2", "Shrek Tercero", "Shrek:Felices para siempre")


# crear vector numérico con puntuación de las películas+
puntuacion <- c(7.9,7.2,6.1,6.3)


# crear vector lógico sobre si la película es posterior a 2015
posterior_2005 <- c(FALSE,FALSE,TRUE,TRUE)

####################################################
# práctica 2: operaciones aritméticas con vectores #
####################################################

##FUNCIONES CON VECTORES: length(), sum(), mean()
# sumar 2 a la puntuación
puntuacion + 2

# dividir la puntuación entre 2
puntuacion / 2

# crea la puntuación de rafa
puntuacion_rafa<- c(10,10,10,10)

# calcular diferencia entre puntuaciones
puntuacion_rafa - puntuacion

# calcular la longitud del vector
length(puntuacion)
length(puntuacion_rafa)
# calcular el promedio del vector puntuacion
sum(puntuacion)/length(puntuacion)## calcular el promedio
mean(puntuacion)##calcula el promedio

###################################################
# práctica 3: selección de elementos de un vector #
###################################################

## selección basada en posición
# seleccionar la tercera película
nombre[3]

# seleccionar la primera y la última película
nombre[c(1,4)]

## selección basada en condición lógica
# crear condición lógica
puntuacion_media <- puntuacion < 7

# mostrar condición para ver TRUE/FALSE
puntuacion_media

# mostrar puntuaciones bajas
puntuacion[puntuacion_media]

# mostrar nombres de películas con puntuaciones bajas
nombre[puntuacion_media]
