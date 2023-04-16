
# Explorando data frames --------------------------------------------------

# creamos un dataframe

# agregar una columna nueva



# agregar una fila nueva (con listas)

# color como factor

# agregar un nuevo nivel al factor

# remover la fila errónea

# eliminar columnas


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

# cargar el df sin descargarlo

# inspeccionar el df

# inspeccionar columnas

# typeof(gapminder)
# length(gapminder)

# explorar dimensiones

# nombres de columnas

# comienzos y finales
