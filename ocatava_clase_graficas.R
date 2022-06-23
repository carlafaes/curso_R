# T2V4 - graficar en R

# Objetivo: diferenciar formas de graficar en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. graficar con base graphics
# 2. graficar con ggplot2

# datos de la primera parte
year <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)

# graficando con codigo

plot(x= year,
     y=disney)

# editando la grafica
plot(x=year,
     y=disney,
     main='disney',##titulo
     xlab='',##eje x
     ylab='',##eje y
     col='cornflowerblue',##color
     pch=16,##puntos rellenos
     panel.first = grid())##lineas de fondo



##otras funciones para hacer graficas basicas en R
##barplot() //barras
#hist()  //barras
##pie() //grafica de torta




# Graficas con ggplot2
# install.package(ggplot2) # para instalar ggplot2
library(ggplot2)

# hacer dataframe
peliculas <- data.frame(year, 
                        disney)

# graficar utilizando ggplot2

##utiliza la gramatica de los graficos
##Partes de una oracion: Sujeto,verbo,predicado.
##Partes de una grafica: Layers o capas
##Principales capas:
## 1- Datos
## 2-Mapping
## 3-Geometria

##elementos visuales: Eje X, Eje Y, Color,Tamaño,etc.

ggplot(data=peliculas,
       mapping = aes(x= year,
                     y=disney)) +
  geom_point() +
  labs(title = 'disney')


