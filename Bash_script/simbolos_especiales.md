1.- En la línea de comandos de Linux, el símbolo `<` se utiliza para redirigir la entrada desde un archivo hacia un comando. Este símbolo se conoce como "redirección de entrada". La sintaxis básica es la siguiente:

```bash
comando < archivo
```

Esto significa que el contenido del archivo se utiliza como entrada para el comando en lugar de ingresar datos directamente desde el teclado. Aquí hay un ejemplo práctico:

```bash
cat < archivo.txt
```

En este ejemplo, el comando `cat` se utiliza para mostrar el contenido del archivo `archivo.txt`. La redirección `<` toma el contenido del archivo y lo pasa como entrada estándar al comando `cat`.

También puedes utilizar la redirección de entrada en combinación con otros comandos o tuberías para procesar datos desde un archivo. Por ejemplo:

```bash
grep "patrón" < archivo.txt
```

Este comando buscará el patrón especificado en el contenido del archivo `archivo.txt` utilizando `grep`.

En resumen, `<` se utiliza para redirigir la entrada desde un archivo hacia un comando en la línea de comandos de Linux.

2.- En la línea de comandos de Linux, el símbolo `>` se utiliza para redirigir la salida de un comando hacia un archivo. Este proceso se conoce como "redirección de salida". Aquí hay algunas formas comunes en las que se utiliza:

a. **Redirección a un archivo:**
   ```bash
   comando > archivo
   ```
   Este comando ejecuta el comando y coloca la salida en el archivo especificado. Si el archivo ya existe, su contenido se sobrescribe. Si no existe, se crea.

   Ejemplo:
   ```bash
   echo "Hola, mundo" > salida.txt
   ```
   En este ejemplo, la cadena "Hola, mundo" se escribirá en el archivo llamado `salida.txt`.

b. **Redirección de la salida estándar y de error:**
   ```bash
   comando > archivo 2>&1
   ```
   Este comando redirige tanto la salida estándar (stdout) como la salida de error estándar (stderr) hacia el mismo archivo.

   Ejemplo:
   ```bash
   comando 2>&1 > salida.txt
   ```
   Esto redirigirá tanto la salida estándar como la salida de error al archivo `salida.txt`.

c. **Añadir salida a un archivo existente:**
   ```bash
   comando >> archivo
   ```
   Similar a la primera forma, pero en lugar de sobrescribir el archivo, agrega la salida al final del archivo existente.

   Ejemplo:
   ```bash
   echo "Adicional" >> salida.txt
   ```
   Esto agregará la cadena "Adicional" al final del archivo `salida.txt`.

Estas son solo algunas formas comunes de usar el operador `>`. La redirección es una característica poderosa en la línea de comandos de Linux que permite gestionar y almacenar la salida de los comandos de manera eficiente.

3.- En la línea de comandos de Linux, el símbolo `|` se utiliza para la canalización o "pipe". La canalización permite que la salida de un comando se utilice como entrada para otro comando. Esto facilita la combinación de múltiples comandos para realizar tareas más complejas y poderosas.

Por ejemplo:
```bash
comando1 | comando2
```

Esto toma la salida del `comando1` y la utiliza como entrada para el `comando2`. Cada comando se ejecuta en su propio proceso, y los datos entre ellos se transmiten a través del pipe.

Ejemplo práctico:
```bash
ls -l | grep ".txt"
```

En este ejemplo, el comando `ls -l` lista los archivos en el directorio actual con información detallada, y la salida se pasa al comando `grep ".txt"`, que filtra solo las líneas que contienen la cadena ".txt". Esto puede ser útil para encontrar archivos específicos en un directorio.

La canalización es una característica poderosa que permite la composición de comandos, lo que es una de las fortalezas fundamentales del sistema operativo Unix y sus derivados, como Linux.

3.- En la línea de comandos de Linux, el operador `<<<` se utiliza para redirigir una cadena como entrada estándar para un comando. Esto se conoce como "here string" o cadena de aquí.

La sintaxis básica es la siguiente:

```bash
comando <<< "cadena"
```

Este comando toma la cadena especificada y la utiliza como entrada estándar para el comando. Aquí tienes un ejemplo práctico:

```bash
echo "Hola, mundo" <<< cat
```

Este comando imprimirá "Hola, mundo" en la pantalla.

Se usa con menos frecuencia que otras formas de redirección, pero puede ser útil en situaciones específicas donde deseas proporcionar una cadena como entrada para un comando en lugar de un archivo o la entrada estándar directa.
