### Introducción al R

 * R es un sofware *clonico* del paquete S-plus, Que es un compendio de aplicaciones estadisticas que utilizan el lenguaje S.
 * Diseñado por la compañia AT&T's Bell laboratories(en principio para su uso interno)

#### ¿como funciona?

 * Toda expresion que pueda ser ejecutada desde la linea de comandos se denomina **expresion**.
 * Estas **expresiones** pueden tener mas de una linea de longitud.
 * Las expresiones se ejecutan con **ENTER**
 * Cuando se presiona **Enter** despues de una expresion incompleta, esta no se ejecuta ni se produce un mensaje de error, apareceera el *prompt +* al comienzo de una linea de comandos invitandonos a completar la expresion,
 * Los elementos basicos de R son los **objetos** 
 * Los **objetos** son ficheros capaces de ser editados y, en su caso, ejecutados.
 * Un **objeto** es el resultado de ejecutar una expresion en la que aparece el operador <-.
	* dicho de otra forma: una expresion que nos interese guardar
	* por ejemplo: para volver a utilizar una expresion en otra ocasion o porque va a ser parte de otra expresion.
		* puede ser salvada por el operador <_, tambien denominado operador *asignacion*.

Por ejemplo, si queremos denominar *a* al numero 1, ejecutariamos la expresion

```R
> a<-1
```

pudiendo hacer ahora 

```R
> a+a
[1] 2
```

 * El numero que aparece entre corchetes, nos indica solamente el lugar que ocupa el primer valor del resultado de ejecutar la expresion que precede.

### Nombres a objetos y tipos de objetos

 * El nombre asignado a un objeto puden ser o letras, tambien puede incluir cualquier combinacion de letras mayusculas o minusculas, numeros y puntos.
	* ejemplo: dos nombres de **objetos** pueden ser *X* y *datos.nuevos*.

 * Los dos tipos de objetos mas utilizados son el dato, y la funcion.
	* Las funciones constan de un nombre sequido de dos parentesis, *nombre()*; los parentesis se incluyen sus *argumentos*

### Funciones

 * si solo ejecutamos el *nombre* de la funcion obtendremos su definicion.
 * si ejecuta *?nombre* obtendra ayuda sobre su utilizacion.

El papel de la funciones es tan relevante que podemos decir que cuando ejecutamos R en realidad estaremos ejecutando funciones.

La Importancia de las Funciones es tal que puede decirse que R es un **lenguaje funcional**, en sentido de que sus *programas* se presentan como funciones escritas en su lenguaje.
	* Los mas interesante es que vermos que podremos crear nuestras propias **funciones**.

 * Una de las funciones mas senciallas y por la cual *salimos* del programa

 ```R
> q()
 ```

Al ejecutarla, R os preguntara si quieres guardar tu espacio de trabajo, si es asi al abrir R de nuevo podremos volver a utilizar los resultados de la sesion anterior.

### Utilizar R como calculadora

R se pude utilizar como una calculardora muy potente.

```R
> 9*8
[1] 72
```

u obtener el valor de las funciones mas conocidas como la pontencial, la exponeecial, la raiz cuadrada...

```R
> 3^2
[1] 9
> exp(2)
[1] 7.389056
> sqrt(16)
[1] 4
```

Tambien se pueden resolver sistemas de ecuaciones o hacer integracion numerica y otras muchas aplicaciones matematicas, pero R es un sofware espicialmente creado para ejeecutar Metodos Estadisticos.

### Librerias

R tiene miles de funciones, agrupadas en lo que se denomina **librerias** 

 * Estas **librerias** se pueden intalar, aparte de las que el propio programa trae por defecto.

### Dos funciones que destacar

 * funcion *objects*, mediante la cual podremos listar los objetos R existentes

```R
> objects()
[1] "a"
```

 * La funcion *rm*, utilizada para suprimir objetos.

```R
> rm(a)
> objects()
character(0)
```

#basics_R
