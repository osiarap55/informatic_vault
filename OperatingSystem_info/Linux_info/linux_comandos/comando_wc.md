El comando `wc` en sistemas operativos basados en Unix y Linux se utiliza para contar palabras, líneas y bytes en archivos de texto. Su sintaxis básica es la siguiente:

```bash
wc [opciones] archivo
```

Aquí hay algunas opciones comunes que se pueden utilizar con el comando `wc`:

- `-l`: Muestra el número de líneas en el archivo.
- `-w`: Muestra el número de palabras en el archivo.
- `-c`: Muestra el número de bytes en el archivo.
- `-m`: Muestra el número de caracteres en el archivo. (Esto incluye caracteres de control y espacios en blanco).

Ejemplos:

1. Para contar el número de líneas, palabras y bytes en un archivo llamado `archivo.txt`:

    ```bash
    wc archivo.txt
    ```

2. Para contar solo el número de líneas en el archivo:

    ```bash
    wc -l archivo.txt
    ```

3. Para contar el número de palabras en un archivo:

    ```bash
    wc -w archivo.txt
    ```

4. Para contar el número de caracteres en un archivo:

    ```bash
    wc -m archivo.txt
    ```

Estos son solo algunos ejemplos básicos. Puedes combinar las opciones según tus necesidades. Además, el comando `wc` también puede recibir la entrada desde la tubería (`|`) y contar las estadísticas de la entrada proporcionada por otro comando.
#linux_comandos
