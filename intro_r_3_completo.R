# Creando gráficas con calidad para publicación con ggplot2

# cargamos los paquetes --------------------------------------------------------

library(ggplot2) # install.packages("ggplot2")
library(gapminder) # install.packages("gapminder")


# exploramos el df -------------------------------------------------------------

gapminder
str(gapminder)


# graficamos -------------------------------------------------------------------

# 1° capa: df


# 2° capa: mapeamos variables a los ejes (y a aesthetics)
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp)

# 3° capa: agregamos geoms (indican cómo se representan los datos)
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp) +
  geom_point()


# ejercicio 1 ------------------------------------------------------------------

# Modificar el ejemplo anterior de manera que en la figura se muestre cómo la 
# esperanza de vida ha cambiado a través del tiempo (pista: columna year)
ggplot(data = gapminder) + 
  aes(x = year, y = lifeExp) +
  geom_point()

# podemos sumar más información sobre los mapeos estéticos
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp, color = continent) +
  geom_point()


# capas ------------------------------------------------------------------------

# el gráfico de dispersión no era el mejor, probamos con líneas
ggplot(data = gapminder) + 
  aes(x = year, y = lifeExp, by = country, color = continent) + 
  geom_line() 

# podemos seguir sumando capas
ggplot(data = gapminder) + 
  aes(x = year, y = lifeExp, by = country, color = continent) + 
  geom_line() +
  geom_point()

# podemos especificar opciones para cada geom
ggplot(data = gapminder) + 
  aes(x = year, y = lifeExp, by = country) +
  geom_line(aes(color = continent)) +
  geom_point()

# las capas se grafican en el orden que las indicamos
ggplot(data = gapminder) + 
  aes(x = year, y = lifeExp, by = country) +
  geom_point() + 
  geom_line(aes(color = continent)) # ahora los puntos quedaron "abajo"

# los aesthetics se pueden vincular a todo un geom y no a una variable
ggplot(data = gapminder) + 
  aes(x = year, y = lifeExp, by = country) +
  geom_line(aes(color = continent)) +
  geom_point(color = "blue") # lo sacamos de los aes y lo ponemos en el geom directo


# transformaciones y estadísticas ----------------------------------------------

# ggplot facilita sobreponer modelos estadísticos a los datos
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp, color = continent) +
  geom_point() # hay varios outliers que no permiten observar bien los datos

# podríamos cambiar la escala del eje x, con la función scale o también podríamos
# sumarle transparencia a los puntos con la función alpha
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp, color = continent) +
  geom_point(alpha = 0.5) +
  scale_x_log10() # aplica una transformación sobre los valores

# agregamos otra capa: test estadístico
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp, color = continent) +
  geom_point(alpha = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm") # este gráfico nos da "raro", movamos color = continent

ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp) +
  geom_point(alpha = 0.5, aes(color = continent)) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 1.5)


# ejercicio 2 ------------------------------------------------------------------

# A partir de la siguiente figura, modificar el color y el tamaño de los puntos:
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp) +
  geom_point(alpha = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm", linewidth = 1.5)

# solución
ggplot(data = gapminder) +  
  aes(x = gdpPercap, y = lifeExp) +
  geom_point(alpha = 0.5, size = 3, color = "orange") +
  scale_x_log10() +
  geom_smooth(method = "lm", linewidth = 1.5)

# también podemos cambiar la forma de los puntos:
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp) +
  geom_point(size = 2, color = "#800080", shape = 9) + # tmb pueden usar hex codes
  scale_x_log10() +
  geom_smooth(method = "lm", linewidth = 1.5)


# modificando texto ------------------------------------------------------------

# podemos cambiar el texto de los ejes y del título del gráfico
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp, color = continent) +
  geom_point(alpha = 0.5) +
  scale_x_log10() + 
  labs(x = "PBI per cápita",
       y = "Esperanza de vida",
       color = "Continente",
       title = "Correlación entre esperanza de vida y PBI per cápita de cada país")

# nos queda muy largo el título, lo podemos cortar:
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp, color = continent) +
  geom_point(alpha = 0.5) +
  scale_x_log10() + 
  labs(x = "PBI per cápita",
       y = "Esperanza de vida",
       color = "Continente",
       title = "Correlación entre esperanza de\nvida y PBI per cápita de cada país")


# exportando una gráfica -------------------------------------------------------
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp, color = continent) +
  geom_point(alpha = 0.5) +
  scale_x_log10() + 
  labs(x = "PBI per cápita",
       y = "Esperanza de vida",
       color = "Continente",
       title = "Correlación entre esperanza de\nvida y PBI per cápita de cada país")

# guardamos el último gráfico
ggsave(filename = "lifeExp.png", width = 12, height = 10, dpi = 300, units = "cm")

# también podríamos especificar el nombre del gráfico que queremos guardar
# siempre y cuando le hayamos puesto nombre al gráfico
ggsave(filename = "lifeExp.png", plot = lifeExp_plot, width = 12, 
       height = 10, dpi = 300, units = "cm")


# extra: figuras en múltiples paneles ------------------------------------------

# la capa facet permite dividir los gráficos en múltiples paneles
ggplot(data = gapminder) + 
  aes(x = gdpPercap, y = lifeExp) +
  geom_point(alpha = 0.5) +
  scale_x_log10() + 
  facet_wrap(~ continent)

# también podríamos utilizar los distintos paneles para mostrar la esperanza de
# vida por país (de solo países que empiezan con A y Z) a lo largo de los años

# creamos el conjunto de datos a graficar
starts.with <- substr(gapminder$country, start = 1, stop = 1) # para ver con qué letra empieza cada país
az.countries <- gapminder[starts.with %in% c("A", "Z"), ] # extrae solo los que empiezan con A y Z

# graficamos
ggplot(data = az.countries) +
  aes(x = year, y = lifeExp, color = continent) +
  geom_line() + 
  facet_wrap( ~ country)
