`nmap` es una herramienta de escaneo de red utilizada para descubrir hosts y servicios en una red, así como para crear un mapa de la topología de la red. Aquí tienes una descripción básica de cómo puedes usar el comando `nmap`:

### Uso básico:

```bash
nmap [opciones] objetivo
```

- **`opciones`**: Puedes usar varias opciones con `nmap` para personalizar tu escaneo. Algunas opciones comunes incluyen:
  - `-p`: Especifica los puertos a escanear.
  - `-sS`: Realiza un escaneo de tipo SYN (TCP SYN scan), el cual es más sigiloso que un escaneo completo.
  - `-sU`: Realiza un escaneo de puertos UDP.
  - `-O`: Intenta identificar el sistema operativo del objetivo.
  - `-A`: Activa la detección del sistema operativo, el escaneo de versiones y la detección de servicios/agresivo.
  - `-T`: Especifica el nivel de agresividad del escaneo (de 0 a 5).
  - `-v`: Incrementa la verbosidad (muestra más información durante el escaneo).
  - `-iL`: Lee los objetivos desde un archivo.

- **`objetivo`**: Puede ser una dirección IP, un nombre de dominio o un rango de direcciones IP.

### Ejemplos:

1. Escaneo básico de puertos en un host:
   ```bash
   nmap objetivo
   ```

2. Escaneo de un rango de puertos específico:
   ```bash
   nmap -p 1-100 objetivo
   ```

3. Escaneo de todos los puertos:
   ```bash
   nmap -p- objetivo
   ```

4. Escaneo de puertos TCP SYN:
   ```bash
   nmap -sS objetivo
   ```

5. Escaneo de puertos UDP:
   ```bash
   nmap -sU objetivo
   ```

6. Detección de sistema operativo y servicios:
   ```bash
   nmap -A objetivo
   ```

7. Escaneo de múltiples objetivos desde un archivo:
   ```bash
   nmap -iL lista_de_objetivos.txt
   ```

8. Escaneo agresivo y verboso:
   ```bash
   nmap -A -v objetivo
   ```

Ten en cuenta que el uso de `nmap` puede estar sujeto a restricciones legales y éticas. Es importante obtener permiso antes de escanear una red que no sea de tu propiedad.

Puedes consultar la documentación de `nmap` o ejecutar `nmap --help` para obtener una lista completa de opciones y obtener más detalles sobre su uso.
#linux_comandos
