# video 08 – dataframes

# Objetivo: estudiar qué son dataframes en R.

#Un dataframe es una estructura de datos donde se utilizan diferentes tipos de variables.
#Son importantes para garficas, analisis y modelos con mcuhas variables estadisticas.
# ——————————————–
# En este ejercicio vamos a:
# 1. Crear dataframes en R
# 2. Ordenar dataframes por columnas
# 3. Seleccionar elementos de un dataframe

#####################################
# correr esto antes de empezar…   #
#####################################

# vectores sobre peliculas de Shrek
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)

#######################################
# práctica 1: crear un dataframe en R #
#######################################

# crear dataframe de vectores
peliculas_dataframes <- data.frame(nombre,
                                   puntuacion,
                                   posterior_2005)



# mostrar dataframe
peliculas_dataframes

# cambiar nombre de dataframe a mayusuculas
names(peliculas_dataframes) <- c("NOMBRE",
                                 "PUNTUACION",
                                 "POSTERIOR_2005")




# mostrar dataframe (sí, otra vez)
peliculas_dataframes

#####################################################
# práctica 2: Seleccionar elementos de un dataframe #
#####################################################

# seleccionar un elemento del dataframe
peliculas_dataframes[3,2]##primero filas y luego columnas
peliculas_dataframes[2,1]
peliculas_dataframes[3,"PUNTUACION"]
# seleccionar más de un elemento del dataframe
peliculas_dataframes[c(2,3),c(1,2)]
peliculas_dataframes[c(3,4), c("PUNTUACION","POSTERIOR_2005")]

# seleccionar una fila o renglón del dataframe
peliculas_dataframes[2,]

# seleccionar una columna del dataframe
peliculas_dataframes[,2]
peliculas_dataframes$PUNTUACION
peliculas_dataframes$NOMBRE
#################################
# práctica 3: ordenar dataframe #
#################################

# mostrar el dataframe
peliculas_dataframes

# mostrar el indice de la columna de puntuacion con order
order(peliculas_dataframes$PUNTUACION)

# funcion order (menor a mayor)
orden_menor_mayor <- order(peliculas_dataframes$PUNTUACION,
                           decreasing = FALSE)


# mostrar el dataframe ordenado
peliculas_dataframes[orden_menor_mayor,]

# funcion order (mayor a menor)
orden_mayor_menor <- order(peliculas_dataframes$PUNTUACION,
                           decreasing = TRUE)


# mostrar el dataframe ordenado
peliculas_dataframes[orden_mayor_menor,]

# guardar el dataframe ordenado
dataframe_ordenado <- peliculas_dataframes[orden_mayor_menor,]

