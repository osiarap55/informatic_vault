## Graficos en R

La ventana de graficos se abre de forma automatica al ejecutar alguna *funcion* que lo realice.

Estas *funciones* se dividen en Funciones graficas de *alto nivel* y de *bajo nivel*.

	* **Graficas de alto nivel** se crea un grafico nuevo
	* **Graficas de bajo nivel** se modifican graficas ya existente


### Fucniones Graficas de alto nivel

Como antes dijimos, las funcniones de alto nivel producen un grafico nuevo, borrando previamente el grafico que puediera existir en la ventana de graficos.

Las **funciones graficas** de alto nivel se dividen en varios grupos dependiendo de lo que queramos representar, Si queremos representar funciones matematica:

 * primero deberemos crear un vector de valores correspondiente a las abscisas(el *dominio* de la funcion en la que va a ser evaluada esta)
 * luego realizar el grafico deseado de pares de puntos utilizando la funcion de R, **plot**.

#### Ejemplo 1

Para representar la funcion *f(x) = sen(x)* entre *-$\pi$ y $\pi$*, ejecutariamos las siguientes expresiones

```R
> x<-seq(-pi, pi, len=100)
> plot(x, sin(x), type="l")
```

![Grafica de funcion seno](grafica_sen_pi_pi.png)

```R
type="l"
```

(en donde hemos utilizado la letra l y no el numero 1) especifica que el grafico de la funcion debe aparecer mediante trazos solidos.

Si queremos represenetar pares de datos (x, y) mediante un diagrama de dispersion, simplemente utilizariamos la funcion **plot**

#### Ejemplo 2

Si queremos representar pares de datos en un *diagrama de dispersion* basta con que ejecutemos la siguiente secuencia de instrucciones (expresiones en terminologia R), obteniendo el grafico siguiente.

```R
> x<-c(68,100,85,133,130,165,120,120,155,117)
> y<-c(6,6.3,6,6.3,7,8,7,8.1,9,6.6)
> plot(x,y)
```

![Grafica de dispersion](grafica_dispersion.png)


### Funciones graficas de bajo nivel

Se utiliza para ejecutar graficos ya existentes, por tanto, al ser ejecutadas, no suprimen el grafico existente.

	* Las funciones **points** y **lines** son las funciones graficas de bajo nivel correspondientes a **type= p** y **type= l** respectivamente.

	* La funcion **abline** permite añadir una linea recta a un grafico ya existente, especificando los valores de la ordenada de origen y la pendiente.


#basics_R

