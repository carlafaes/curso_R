# video 09 – listas

# Objetivo: estudiar qué son las listas en R
# ——————————————-
# En este ejercicio vamos a:
# 1. Crear listas en R
# 2. Seleccionar elementos de una lista
# 3. Identificar listas en R

#####################################
# correr esto antes de empezar…   #
#####################################

# Cargando datos de videos anteriores
# informacion peliculas shrek. Ver video –> https://bit.ly/2LaUWbo
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)
# informacion estrenos de peliculas. Ver video –> https://bit.ly/2KDKCJE
warner <- c(20, 20, 16, 17, 17, 22, 17, 18, 19)
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
fox <- c(18, 15, 15, 15, 16, 17, 15, 13, 11)

# crear diferentes estructuras de datos en R
vector_titulos <- nombre
matriz_peliculas <- matrix(c(warner, disney, fox),
                           nrow = 9,
                           ncol = 3)
peliculas_df <- data.frame(nombre,
                           puntuacion,
                           posterior_2005)

####################################
# práctica 1: crear una lista en R #
####################################

# crear lista en R
lista1 <- list(vector_titulos,
               matriz_peliculas)


# mostrar lista
lista1

# cambiar nombre de dataframe
names(lista1) <- c('vector',
                   'matriz')


# mostrar lista (sí, otra vez)
lista1

##################################################
# práctica 2: Seleccionar elementos de una lista #
##################################################
#Como se seleccionan elementos de una lista? generalmente se utiliza lista[['nombre]]
#seleccion del elemento del elemento: lista[['vector]][4]
#################################### lista[['dataframe']][8,'columna']

# Seleccionar vector de la lista
lista1[['vector']]

# Seleccionar el tercer elemento del vector de la lista
lista1[['vector']][3]

# Seleccionar fila 5 y columna 3 de la matriz de la lista
lista1[['matriz']][5,3]

######################################################
# práctica 3: agregar/eliminar elementos a una lista #
######################################################

##Para agregar un elemento: lista[['nombre]] <- objeto
## Para eliminar un elemento: lista[['nombre]] <- null

# agregar dataframe a lista
lista1[['dataframe']] <- peliculas_dataframes

# revisar que está el dataframe
lista1

# eliminar un elemento de lista
lista1[['vector']] <- NULL

# revisar que no está el vector
lista1
