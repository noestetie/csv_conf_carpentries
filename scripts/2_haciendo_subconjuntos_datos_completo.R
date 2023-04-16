# HACIENDO SUBCONJUNTOS DE DATOS -----

# Creemos un vector numérico 
x <- c(54, 33, 56, 595, 34)
names(x) <- c('a', 'b', 'c', 'd', 'e') # Asignamos un nombre a cada elemento del vector

# Ver el contenido del vector
x

## ACCEDER A ELEMENTOS DEL VECTOR -----

# Elegir el primer elemento del vector
x[1]

# Elegir el quinto elemento del vector
x[5]

#####################################################################
# Los corchetes son una función. Para los vectores (y las matrices), esto significa “dame el n-ésimo elemento”.


# Elegir varios elementos a la vez usando la función c() (combine)
x[c(1,3)]

# Elegir elementos dentro de un rango
x[1:4]


####################
# PREGUNTAS: 
## ¿Qué pasa si elijo dos veces un elemento de un vector?
## ¿Qué pasa si indico un índice mayor que el de la longitud del vector?
## ¿Qué pasa si indico un índice igual a cero?

x[c(2,2,1)]
x[6]
x[0]


## SALTANDO Y QUITANDO ELEMENTOS ------

# ¿Qué pasa si elijo un índice negativo?
x[-2]

# También podemos omitir varios elementos a la vez
x[c(-2,-5)]
x[-c(2,5)]

# Si quiero eliminar un elemento del vector hay que asignar el resultado de nuevo a la variable
x <- x[-4]

# Ver los valores del vector 'x'
x


####################
# DESAFIO 1 -------
# Dado el siguiente código:

x <- c(54, 33, 56, 595, 34)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)

# Encuentra al menos 3 comandos distintos que produzcan la siguiente salida:
#  b  c  d
# 33 56 595

# SOLUCIONES POSIBLES
x[2:4]

x[-c(1,5)]

x[c("b", "c", "d")]

x[c(2,3,4)]


####################
# CREANDO SUBCONJUNTOS USANDO OPERACIONES LÓGICAS ----

# Con los vectores numéricos, podemos apoyarnos en los operadores de comparación
# para elegir valores

# Elegir valores mayores a 50
x[x > 50]

# Explicando un poco lo que sucedió, la instrucción x>7, 
# genera un vector lógico c(FALSE, TRUE, TRUE,TRUE, FALSE) 
# y después éste selecciona los elementos de x correspondientes a los valores TRUE.

# También podemos usar == para imitar el método anterior de indexar con nombre 
# (recordemos que se usa == en vez de = para comparar):
x[names(x) == "a"]


# Operadores Lógicos

# "&" (AND) Retorna valores en donde se cumplen las condiciones adelante o detrás del símbolo
x[x > 33 & x < 55]

# "|" (OR) Retorna valores si a la derecha o a la izquierda (o ambos) cumple con la condidición
x[x < 55 | x > 600]


##########################
# HACIENDO SUBCONJUNTOS DE FACTORES -----

# Creemos un vector con factores
f <- factor(c("a", "a", "b", "c", "c", "d"))

# Elegir los elementos cuyo valor sea "a"
f[f == "a"]

# Elegir elementos dispersos dentro de un vector
f[f %in% c("b", "d")]



########################
# DATA FRAMES ---------

# Carguemos un data frame
gapminder <- read.csv("data/gapminder-FiveYearData.csv")

head(
gapminder[3] # Extrae una sola columna
)

# Con dos argumentos podemos seleccionar [filas, columnas]
gapminder[1:3, ]

# Podemos elegir filas y columnas específicas
gapminder[1:3, c("country", "year", "gdpPercap")]


## REPLICANDO LOS EJEMPLOS USANDO dplyr -----

# Cargando la librería dplyr
library(dplyr)

# Seleccionando columnas con select()
gapminder %>% 
  select(pop) %>% 
  head()

# Filtrar valores
gapminder %>% 
  filter(country == "Afghanistan")

# Seleccionar las columnas 'country', 'year', y gdpPercap para Afghanistan
gapminder %>% 
  select(country, year, gdpPercap) %>% 
  filter(country == "Afghanistan")
