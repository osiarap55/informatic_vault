## Precision del ajuste por minimos cuadrados

Podriamos llegar a pensar en ciertos casos que la nube de puntos parece no estar concentrada en su recta de ajustes, lo que llevaria a pensar que la *prediccion* de la variable obtienda no es muy *fiable*.

La causa de esta falta de concentracion puede ser que ambas variables no esten relacionadas linealmente. Para esto podemos utilizar otro tipo de funciones para que se ajusten mejor los datos a la funcion de la recta:

## Distintos tipos de funciones para la rectas de ajustes

### Funcion exponencial

Para ciertos tipos de datos podria ser que se ajuste mejor una funcion del tipo **exponencial** de la forma $$y_{ti} = a * b^{x_i}$$ con b < 1. Es decir, se ajusta mejor a ciertos datos $$\{(x_i, log * y_i):i = 1,...,n\}$$ una recta de la forma $$log * y_{ti} = A + B x_i$$ con pendiente B = log b negativa (y ordenada en el origen A = log a). Valores que, dicho sea de paso, se obtendran como hemos visto anteriormente en [[ajustes_por_minimos_cuadrados]]

### Otras tipos de funciones

 * funcione potencial
 * una parabola o en general un polinomio de grado *n*

## Bondad del ajuste

Necesitamos, pues, un valor que nos de una medida de lo proxima que esta la funcion que hemos ajustado a la nube de puntos de los datos.

* Como el criterio que hemos utilizado para ajustar la funcion $y_{ti} = f(x_i)$ a la nube de puntos ha sido de minimos cuadrados, es decit elegit como valores los parametros que definen la funcion f aquellos que minimicen la suma de cuadrados de las deviaciones $$\sum_{i=1}^{n}(y_i - y_{ti})²$$ parece razonable que una vez determinamos dichos parametros, calculemos cuanto vale dicha suma de cuadrados para cada una de las funciones determinada, eligiendo aquella para la que se obtenga en menor valor.

	* Este valor recibe el nombre de **Varianza Residual**

$$V_r = \frac{1}{n}\sum_{i=1}^{n}(y_i - y_{ti})²$$

### Varianza Redisual

La funcion optima seria, e  principio, aquella para la que su varianza residual fuera cero; es decir, aquella que pasara por todos los puntos $y_i$.

### Coeficiente de Determinacion

Aunque a la hora de comparar el ajuste de los datos por dos funciones podemos utilizat la varianza residual, siendo mejor aquella para la que dicha varianza sea menor, es conveniente utilizar otro valor que permita decidir si un ajuste es o no adecuado en si mismo (oueede que uno sea mejor que otro aunque ambos sean muy malos).

 * Suege asi el concepto de *Coeficiente de Determinacion* definido como $$R² = 1 - \frac{V_r}{s^2_y}$$ siendo $V_r$ la varianza residual y $s^2_y = \frac{1}{n}\sum_{i=1}^{n}(y_i - a_y)²$ la varianza (marginal) de las $y_i$.

Este coeficiente esta comprendido entre 0 y 1, hablandose de un buen ajuste en aquellos casos en los que R² este cerca de 1, y de un mal ajuste aquellos en lo que sea cercano a. 

	* Para la valoracion de lo que se puede considerarse *cerca o lejos* que esta el coeficiente lo veremos en la inferencia Estadistica.

	* Par ver el grado o fuerza fr la relacion entre dos variables lo haremos mediante el *Coeficiente de correlacuon lineal de Pearson*
