## Datos en R

El concepto de *dato* en R es mas amplio que el utilizado en **Estadistica**. Lo que en R se denomina *dato* es el resultado de ejecutar una *expresion* R, es decir, un tipo de *objeto*.

#### Ejemplo:

 * Un dato podria ser una matriz en donde como primera columnna aparecen los nombres de los individuos en los que han observado las variables cuyos valores aparecen en las restantes columnas.


Cada tipo de *dato* tiene asociado determinados **atributos**; el mas importante es su **modo**.

### Tipos o Clases de *modos*:

 * *logical* (logico): **Modo** binario en donde los valores posibles son T o F (Verdadero o Falso).

 * *Numeric* (numerico): **Modo** en donde los valores posibles son numeros reales.

 * *complex* (complejo): **Modo** en donde los valores posibles son numeros complejos.

 * *character* (caracter): **Modo** en donde los valores posibles son caracteres separados por comillas.


### Tipos de *datos*:

 * *vector* (vector): Conjunto de elementos en un orden especifico. Todos los elementos de un vector deben ser del mismo *modo*.

 * *matrix* (matriz): Disposicion bidimensional de elementos de un mismo *modo*.

 * *factor* (factor): Vector cuyos elementos son valores procedentes de un numeros finito de *categorias*.

 * *data frame* (estructura de datos): Disposicion bidimensional de elementos cuyas columnas pueden estar formada por elementos del distinto *modo*.

 * *list* (lista): Expresion mas general de dato, la cual pueden contener colecciones arbritrarias de datos.


### Vectores

El *vector* es el tipo de dato mas utilizado en R, especialmente como argumentos de funciones

Otro **atributo** considerado en un vector es su *logitud*
	* Si queremos conocer el *modo* o la *longitud* de un vector deben usarse las funciones **mode()** y **length**.

#### Creacion de un vector

La forma mas sencilla de crear un vector es utilizando la funcion c. 
	* ejemplo: Para crear el vector x formado por los numeros 1, 2 y 5 y conocer su modo y longitus ejecutariamos:

```R
> x<-c(1,2,3)
> mode(x)
[1] "numeric"
> length(x)
[1] 3
```

Si los elementos de un vector son de *modo caracter*, debemos incluir dichos elementos no numericos entre comillas.

```R
> y<-c("Pepe","Juan","Luis Fulgencio") 
```

Tambein podemos hacer que los elemntos de un vector puedan ser otros vectores. Por ejemplo:

```R
> z<-c("Lucas","Maria",y)
```

y ahora podemos hacer

```R
> z
[1] "Lucas"          "Maria"          "Pepe"           "Juan"          
[5] "Luis Fulgencio"
> mode(z)
[1] "character"
> length(z)
[1] 5
```


#### Importar ficheros ascii a vectores

Una situacion muy habitual es que tengamos nuestros datos en un fichero ascii, llamdo por ejemplo *datos*. En este caso, para crear un vector (no una matriz) deberemos utilizar la funcion **scan()**, direccionando el fichero *datos*

```R
valores<-scan("/home/paradiseland86/...")
```

### Factores

El *factor* es un vector de datos no numerico formado por datos procedentes de categorias; por ejemplo, datos obtenidos al anotar si el individuo es *hombre* o *mujer*.


### Matrices

Para crear una matrix utilizaremos la funcion **matrix** con dos argumentos, la funcion **c**, la cual tendra a su vez los datos a introducir, y el numero de columnas que debera tener la matriz.

la expresion la ejecutariamos asi:

```R
> ejemplo<-matrix(c(2,3,4,6,24,1,42,432),ncol=4)
> ejemplo
     [,1] [,2] [,3] [,4]
[1,]    2    4   24   42
[2,]    3    6    1  432
```

Podemos utilizar en vez del argumento **ncol**, el argumento **nrow**, el cual asigna el numero de filas a la matriz. Tambien se podra utilizar ambos, en el caso de que queramos utilizar un numero determinado de los datos que tenemos.

```R
> z<-matrix(ejemplo,nrow=2,ncol=2)
> z
     [,1] [,2]
[1,]    2    4
[2,]    3    6
```

Obserbamos que R crea las matrices por columnas, si queremos que se complete por filas utilizaremos el argumento **byrow=T**. Asi, podemos ejecutar

```R
> matrix(c(2,3,4,6,24,1,42,432),ncol=4,byrow=T)
     [,1] [,2] [,3] [,4]
[1,]    2    3    4    6
[2,]   24    1   42  432
> 
```

Es combeniente analizar las funciones que vamos a utilizar con **?funcion** ya que la funcion tiene valores por defecto.

Las matrices pueden ser de caracteres.

```R
> personas<-matrix(c("Juan","Armando","Lucas","Abdi","Maria","Alberto"),ncol=2)
> personas
     [,1]      [,2]     
[1,] "Juan"    "Abdi"   
[2,] "Armando" "Maria"  
[3,] "Lucas"   "Alberto"
```

Si tenemos dos o mas vectores del mismo *modo* y ademas tienen la misma longitud, se pueden combinar para formar una matriz utilizando la funcion **cbind**

Asi por ejemplo si tenemos un vector **x** con los cosumos de veinte coches y un vector **y** con los kilometros recorridos por esos mismos vehiculos, se puede formar la matriz w de dimension 20 X 2 mediante la expresion:

```R
> w<-cbind(x,y)
> w
     x   y               
[1,] "1" "Pepe"          
[2,] "2" "Juan"          
[3,] "3" "Luis Fulgencio"
```

La cbind une por columns, de manera analoga rbind las uniria por filas.

Ademas del *modo*, el atributo mas importante de una matriz es su dimension. Se pude averiguar mediante la funcion **dim**. 

```R
> dim(personas)
[1] 3 2
```
que nos indica que es 3x2.


Otros Interese el darle nombre a las filas y columnas, se utiliza el argumento **dimnames** dentro de la funcion **matrix** y el cual debe ser una lista exactamente de los componente necesarios.

```R
> ejemplo<-matrix(c(2,3,4,6,24,1,42,432),ncol=4,
+ dimnames=list(c("Individuo 1","Individuo 2"),
+ c("Hermanos","Edad","Peso","Escolaridad")))
> ejemplo
            Hermanos Edad Peso Escolaridad
Individuo 1        2    4   24          42
Individuo 2        3    6    1         432
```

Tambien es posible ponerle nombres a las filas y columnas ya creadas, por ejemplo a la matriz anterior **z**.

```R
> dimnames(z)<-list(c("Individuo 1","Individuo 2"),
+ c("hermanos","Edad"))
> z
            hermanos Edad
Individuo 1        2    4
Individuo 2        3    6
```

### Estructura de datos

Las matrices (y los vectores) tienen una limitacion importante: todos sus datos deben ser del mismo *modo*. Es decir no podemos tener matrices de caracteres o matrices numericas o matrices logicas. No obstante, en la mayoria de las situacion a la hora de hacer un experimento aleatorio, contendra datos de varios *modos* en diferentes columnas.
En este caso utilizaremos estructuras de datos o *data frames*.

Para crear *estructuras de datos* podemos utilizar dos funciones:
 
 * la funcion **data.frame**, la cual une al igual que la funcion **matrix**, objetos de varias classes, tambien por columnas

 * la funcion **read.table**, para leer datos procendes de un fichero externo.


### Listas

Las *listas* puede admitir datos de diferentes *modos* y difetentes *longitudes*, e inclusive otras listas. Pr esta razon, las listas son, habitualmente, el resultado final donde se van incorporando otras tipos de datos.

La mayoria de las funciones en R que realizan analisis Estadistico, presentan sus resultaso en listas.

 * una lista puede obtener datos originales, los valores ajustados, los residuos, los estadisticos de contraste, el p-valor...

 Para crear una lista se utiliza la funcion **list**


#### Nombres a las filas y columnas de matrices y vectores

Mediante la funcion **names** podemos crear un *vector de nombres* de la misma longitud que el vector. 

Por ejemplo, si queeremos crear un vector formado por el 7, el 4 y el 3, luego asignaremos a esos elementos los nombres Primer examen, Segundo exameny tercer examen.

```R
> z<-c(7,4,3)
> names(z)<-c("primer examen","segundo examen","tercer examen")
> z
 primer examen segundo examen  tercer examen 
             7              4              3 
```

Si solo queremos conocer los nombre del vector **z** ejecutaremos la expresion **names(z)**

#basics_R
