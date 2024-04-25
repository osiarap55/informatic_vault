## Funciones basicas de R en Probabilidades

Existen cuatro Funciones basicas en R que permiten determinar, respectivamente:

 * p*distribu*(x,par) - con la que calcularemos el valor de la Funcion de Distribucion de modelo *distribu* en el punto **x**. Es decir, $F(x)$, siendo *F* la funcion de distribucion de *distribu*

 * d*distribu*(x,par) - con la que calculamos el valor de la funcion de masa o densidad de la distribucion *distribu* en el punto **x**.

 * q*distribu*(p,par) con la que podemos calcular el p-cuantil de la distribucion *distribu*. Es decir, $F^{-1}(p)$, siendo *F* la funcion de distribucion de *distribu*

 * r*distribu*(n,par) medinate la que podemos conseguir **n** valores obtenidos al azar segun el modelo *distribu*.


### parametros

El segundo (o incluso tercer) argumento utilizado en las cuatro funciones anteriores, **par**, quiere decit que es ahi donde deberemos incluir el *parametro* o *parametros* de la distribucion considerada.

### ejemplo

Asi, si queremos obtener, por ejempllo, el valor de la funcion de distribucion de una distribucion normal (definiremos con mas precision mas adelante) de parametros 1 y 2, $N(0,1)$, en el punto $x = 1,5$, ejecutariamos el siguiente codigo obtiendo el valor $F(x) = 0,5987$

```R
> pnorm(1.5,1,2)
[1] 0.5987063
```

O, si queremos determinar el valor de una abscisa de una normal $N(0,1)$ que deje a la derecha un area de probabilidad $0,025$ (es decir, el cuantil 0,975 habitualmente representado por $z_0,0025$), ejecutaremos el siguiente codigo obteniedo el resultado 1,96

```R
> qnorm(0.975,0,1)
[1] 1.959964
```

En lugar de *distribu*, en las cuatro funciones de R podemos utilizar otros los modelos probabilisticos.


#distribucion_de_probabilidad_R
#modelos_probabilisticos_R
