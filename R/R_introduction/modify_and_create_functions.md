## Modificar y Crear Funciones

Cuando utilizamos R estamos ejecutando funciones incorporadas a este paquete, recoradmos que todas las funciones depende de argumentos que seria las correspondientes *variables* en matematicas, algunos argumenos(variables) vienen predeterminados, se pueden obter informacion de ellas ejecutando

```R
> ?var
```

Como dijimos antes, las funciones se pueden modifiar con las *funciones editoras* **fix** y **edit**.

Al modificar una funcion previamente incluida en R, si no queremos prescindir de ella, definiremos primero una funcion nueva.

#### ejemplo de modificacion de funciones predeterminadas:

la funcion de R **var** va a calcular la cuasivarianzas muestrales y no varianzas muestrasles, es decir, divide la suma de los cuadrados de las diferencias por el tamaño de la muestra menos 1, n - 1, y no divide por n.
Entonces si ejecutamos la funcion **var** obtendremos la cuasivarianzas:

```R
> x<-c(6,4,5,2,1,0,3)
> var(x)
[1] 4.666667
```

Si queremos ejecutar la varianza la ejecutariamos asi:

```R
> mean(x^2)-mean(x)^2
[1] 4
> 6*var(x)/7
[1] 4
```

Por tanto, si queremos ejecutar una funcion nueva, que denominaremos **varianza**:

 * primero creamos la funcion
 * a continuacion editamos esta nueva funcion.

 ```R
 > varianza<-var
> fix(varianza)
 ```
y en la ultima linea por la longitud del vector menos 1 y dividir esa longitud, es decir, incluir (length(x)-1)/length(x).

#### ejemplo de crear una nueva funcion:

Seguramente sea mas sencillo utilizat la funcion var en la definicion de una nuevas funcion, podriamos denominarla como **varianza2**.

```R
> fix(varianza2)
```

en la funcion nueva escribiriamos:

```
function(x)
{
(length(x)-1)/length(x)*var()
}
```


#basics_R
