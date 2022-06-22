# video 07 – factores

# Objetivo: estudiar qué son factores en R.
#los factores en R son las estructuras de datos para manejar variables categoricas.
#las variables categoricas son datos que toman una cantidad finita de valores
#en analisis de datos se trata de manera diferente a las variables categoricas, en comparacion con las variables continuas o numericas
#se necesita un objeto en R
# ——————————————–
# En este ejercicio vamos a:
# 1. Crear factores en R
# 2. Recodificar niveles de un factor
# 3. Ordenar niveles de un factor


#####################################
# correr esto antes de empezar…   #
#####################################

# crear vector de ventas
tallas <- c('m', 'g', 'S', 'S','m', 'M')

# intentar graficar
plot(tallas)

###################################
# práctica 1: crear factores en R #
###################################

# crear factor de un vector
tallas_factor <- factor(tallas) ##creamos un vector a partir del vector de tallas

# graficar factor
plot(tallas_factor)

#modificar la funcion factor()
#factor(levels= vector_niveles, labels= vector_etiquetas)

# mirar niveles de factor
levels(tallas_factor)

######################################
# práctica 2: recodificando factores #
######################################

# creando factor recodificado
tallas_recodificado <- factor(tallas,
                              levels= c("g","m","M","S"),
                              labels= c("G","M","M","S"))




# graficando ventas_recodificado
plot(tallas_recodificado)

#############################################
# práctica 3: ordenando niveles de factores #
#############################################

# ordenando niveles (copiar factor anterior)
tallas_ordenado <- factor(tallas,
                          ordered= TRUE,
                          levels= c("S","m","M","g"),
                          labels = c("S", "M", "M","G"))




# viendo el orden en los niveles
tallas_ordenado

# graficando el factor ordenado
plot(tallas_ordenado)
