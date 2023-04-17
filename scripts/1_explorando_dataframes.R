
# Explorando data frames --------------------------------------------------

# creamos un dataframe
gatos <- data.frame(color = c("mixto", "negro", "atigrado"),
                    peso = c(2.1, 5.0, 3.2),
                    juego_cuerda = c(1, 0, 1),
                    stringsAsFactors = TRUE) 

# agregar una columna nueva
edad <- c(2, 3, 5)
gatos <- cbind(gatos, edad)

edad_2 <- c(2, 3, 5, 6)
cbind(gatos, edad_2) # no funciona


# agregar una fila nueva (con listas)
nueva_fila <- list("carey", 3.3, TRUE, 9)
gatos <- rbind(gatos, nueva_fila)

# color como factor
levels(gatos$color) # ¿y carey?

# agregar un nuevo nivel al factor
levels(gatos$color) <- c(levels(gatos$color), "carey")
gatos <- rbind(gatos, nueva_fila)

# remover la fila errónea
gatos[-4,]
na.omit(gatos)
gatos <- na.omit(gatos)

# eliminar columnas
gatos[,-4] # número de columna


# Ejercicio ---------------------------------------------------------------

#' Para crear un dataframe, usamos la siguiente sintaxis:
#' 
#' df <- data.frame(id = c('a', 'b', 'c'),
#'                  x = 1:3,
#'                  y = c(TRUE, TRUE, FALSE),
#'                  stringsAsFactors = FALSE)
#'
#' Crea un nuevo dataframe que contenga la siguiente información:
#' nombre, apellido, número favorito. Luego, usa rbind() para agregar una nueva
#' fila con la información de alguna persona que esté sentada cerca tuyo. Finalmente,
#' usa cbind() para agregar una columna para que cada persona conteste a la siguiente 
#' pregunta: "¿Es hora de una pausa?".


# Gapminder dataset -------------------------------------------------------

# descargar archivo y cargarlo
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")
gapminder <- read.csv("data/gapminder-FiveYearData.csv")
install.packages("gapminder")
library(gapminder)

# cargar el df sin descargarlo
gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv")

# inspeccionar el df
str(gapminder)

# inspeccionar columnas
typeof(gapminder$year)
typeof(gapminder$country)
str(gapminder$continent)

# typeof(gapminder)
# length(gapminder)

# explorar dimensiones
dim(gapminder)
ncol(gapminder)
nrow(gapminder)

# nombres de columnas
names(gapminder)

# comienzos y finales
head(gapminder)
tail(gapminder)