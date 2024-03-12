El comando `grep` es una herramienta de la línea de comandos en sistemas operativos tipo Unix y Linux que se utiliza para buscar patrones de texto en archivos. Aquí te doy una descripción básica de cómo puedes usar el comando `grep`:

### Uso básico:

```bash
grep [opciones] patrón [archivo...]
```

- **`opciones`**: Puedes usar varias opciones con `grep` para personalizar tu búsqueda. Algunas opciones comunes incluyen:
  - `-i`: Realiza la búsqueda de manera insensible a mayúsculas y minúsculas.
  - `-r` o `-R`: Realiza una búsqueda recursiva en directorios.
  - `-n`: Muestra el número de línea junto con la línea que contiene el patrón.
  - `-v`: Invierte la búsqueda, mostrando las líneas que no contienen el patrón.
  - `-w`: Busca el patrón como una palabra completa.
  - `-c`: Muestra solo el número de líneas que coinciden con el patrón.
  - `-A`, `-B`, `-C`: Muestra líneas adicionales antes (`-B`), después (`-A`), o ambas (`-C`) de cada línea coincidente.

- **`patrón`**: Es la cadena de texto que estás buscando en los archivos.

- **`archivo...`**: Puedes proporcionar uno o más nombres de archivos en los que deseas realizar la búsqueda. Si no proporcionas ningún archivo, `grep` tomará la entrada estándar.

### Ejemplos:

1. Buscar un patrón en un archivo:
   ```bash
   grep "patrón" archivo.txt
   ```

2. Búsqueda recursiva en directorios:
   ```bash
   grep -r "patrón" directorio/
   ```

3. Búsqueda insensible a mayúsculas y minúsculas:
   ```bash
   grep -i "patrón" archivo.txt
   ```

4. Mostrar números de línea:
   ```bash
   grep -n "patrón" archivo.txt
   ```

5. Invertir la búsqueda (mostrar líneas que no contienen el patrón):
   ```bash
   grep -v "patrón" archivo.txt
   ```

6. Buscar una palabra completa:
   ```bash
   grep -w "palabra" archivo.txt
   ```

7. Contar el número de líneas que coinciden con el patrón:
   ```bash
   grep -c "patrón" archivo.txt
   ```

8. Búsqueda en varios archivos:
   ```bash
   grep "patrón" archivo1.txt archivo2.txt
   ```

Estos son solo algunos ejemplos básicos. Puedes combinar varias opciones para adaptar la búsqueda a tus necesidades específicas. Además, la ayuda del comando (`man grep`) proporciona información detallada sobre todas las opciones disponibles.
#linux_comandos
