
El comando `tee` en Linux es utilizado para leer la entrada estándar y escribirla tanto en la salida estándar como en uno o más archivos. Este comando es útil en situaciones en las que deseas mostrar la salida de un comando en la pantalla y, al mismo tiempo, almacenarla en un archivo.

El uso básico del comando `tee` es el siguiente:
```bash
comando | tee archivo1 archivo2 ...
```
Esto tomará la salida del comando y la mostrará en la pantalla, al mismo tiempo que la escribirá en los archivos especificados.

Por ejemplo:
```bash
ls -l | tee lista_archivos.txt
```
En este caso, la lista de archivos generada por el comando `ls -l` se mostrará en la pantalla y se guardará en el archivo `lista_archivos.txt`.

## 🌐 Sources
1. [Wikipedia - Standard streams](https://en.wikipedia.org/wiki/Standard_streams)
2. [GeeksforGeeks - tee command in Linux with examples](https://www.geeksforgeeks.org/tee-command-linux-example/)
3. [IONOS - Linux tee command explained with examples](https://www.ionos.com/digitalguide/server/configuration/linux-tee-command/)
4. [Linux Handbook - Tee Command in Linux Explained with Examples](https://linuxhandbook.com/tee-command/)
5. [Linux 101 Hacks - Tee Command Usage Examples](https://linux.101hacks.com/unix/tee-command-examples/)
6. [PhoenixNAP - Linux tee Command {Command Options and Examples}](https://phoenixnap.com/kb/linux-tee)
#linux_comandos
