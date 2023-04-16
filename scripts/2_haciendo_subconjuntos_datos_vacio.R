# HACIENDO SUBCONJUNTOS DE DATOS -----

# Creemos un vector numérico 


# Ver el contenido del vector


## ACCEDER A ELEMENTOS DEL VECTOR -----

# Elegir el primer elemento del vector

# Elegir el quinto elemento del vector

#####################################################################
# Los corchetes son una función. Para los vectores (y las matrices), esto significa “dame el n-ésimo elemento”.


# Elegir varios elementos a la vez usando la función c() (combine)

# Elegir elementos dentro de un rango


####################
# PREGUNTAS: 
## ¿Qué pasa si elijo dos veces un elemento de un vector?
## ¿Qué pasa si indico un índice mayor que el de la longitud del vector?
## ¿Qué pasa si indico un índice igual a cero?




## SALTANDO Y QUITANDO ELEMENTOS ------

# ¿Qué pasa si elijo un índice negativo?

# También podemos omitir varios elementos a la vez

# Si quiero eliminar un elemento del vector hay que asignar el resultado de nuevo a la variable


# Ver los valores del vector 'x'



####################
# DESAFIO 1 -------
# Dado el siguiente código:



# Encuentra al menos 3 comandos distintos que produzcan la siguiente salida:
#  b  c  d
# 33 56 595

# SOLUCIONES POSIBLES



####################
# CREANDO SUBCONJUNTOS USANDO OPERACIONES LÓGICAS ----

# Con los vectores numéricos, podemos apoyarnos en los operadores de comparación
# para elegir valores

# Elegir valores mayores a 50

# Explicando un poco lo que sucedió, la instrucción x>7, 
# genera un vector lógico c(FALSE, TRUE, TRUE,TRUE, FALSE) 
# y después éste selecciona los elementos de x correspondientes a los valores TRUE.

# También podemos usar == para imitar el método anterior de indexar con nombre 
# (recordemos que se usa == en vez de = para comparar):


# Operadores Lógicos

# "&" (AND) Retorna valores en donde se cumplen las condiciones adelante o detrás del símbolo
x[x > 33 & x < 55]

# "|" (OR) Retorna valores si a la derecha o a la izquierda (o ambos) cumple con la condidición
x[x < 55 | x > 600]


##########################
# HACIENDO SUBCONJUNTOS DE FACTORES -----

# Creemos un vector con factores

# Elegir los elementos cuyo valor sea "a"

# Elegir elementos dispersos dentro de un vector



########################
# DATA FRAMES ---------

# Carguemos un data frame

# Con dos argumentos podemos seleccionar [filas, columnas]

# Podemos elegir filas y columnas específicas


## REPLICANDO LOS EJEMPLOS USANDO dplyr -----

# Cargando la librería dplyr

# Seleccionando columnas con select()

# Filtrar valores

# Seleccionar las columnas 'country', 'year', y gdpPercap para Afghanistan

