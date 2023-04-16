# Creando gráficas con calidad para publicación con ggplot2

# cargamos los paquetes --------------------------------------------------------





# exploramos el df -------------------------------------------------------------





# graficamos -------------------------------------------------------------------

# 1° capa: df


# 2° capa: mapeamos variables a los ejes  (y a aesthetics)



# 3° capa: agregamos geoms (indican cómo se representan los datos)





# ejercicio 1 ------------------------------------------------------------------

# Modificar el ejemplo anterior de manera que en la figura se muestre cómo la 
# esperanza de vida ha cambiado a través del tiempo (pista: columna year)




# podemos sumar más información sobre los mapeos estéticos





# capas ------------------------------------------------------------------------

# el gráfico de dispersión no era el mejor, probamos con líneas




# podemos seguir sumando capas





# podemos especificar opciones para cada geom





# las capas se grafican en el orden que las indicamos





# los aesthetics se pueden vincular a todo un geom y no a una variable






# transformaciones y estadísticas ----------------------------------------------

# ggplot facilita sobreponer modelos estadísticos a los datos




# podríamos cambiar la escala del eje x, con la función scale o también podríamos
# sumarle transparencia a los puntos con la función alpha





# agregamos otra capa: test estadístico













# ejercicio 2 ------------------------------------------------------------------

# A partir de la siguiente figura, modificar el color y el tamaño de los puntos:
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp) +
  geom_point(alpha = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm", linewidth = 1.5)

# solución






# también podemos cambiar la forma de los puntos:







# modificando texto ------------------------------------------------------------

# podemos cambiar el texto de los ejes y del título del gráfico









# nos queda muy largo el título, lo podemos cortar:










# exportando una gráfica -------------------------------------------------------









# guardamos el último gráfico


# también podríamos especificar el nombre del gráfico que queremos guardar
# siempre y cuando le hayamos puesto nombre al gráfico




# extra: figuras en múltiples paneles ------------------------------------------

# la capa facet permite dividir los gráficos en múltiples paneles






# también podríamos utilizar los distintos paneles para mostrar la esperanza de
# vida por país (de solo países que empiezan con A y Z) a lo largo de los años

# creamos el conjunto de datos a graficar



# graficamos




