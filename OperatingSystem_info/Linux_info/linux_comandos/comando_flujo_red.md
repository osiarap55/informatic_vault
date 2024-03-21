Para ver el flujo de red en una terminal de Linux, puedes utilizar varias herramientas y comandos. Aquí te muestro algunos de los comandos y herramientas más comunes:

1. **ifconfig**: Este comando muestra información sobre las interfaces de red de tu sistema, incluyendo sus direcciones IP, máscaras de red y estadísticas de tráfico. Para usarlo, simplemente escribe `ifconfig` en la terminal. Sin embargo, ten en cuenta que en sistemas más recientes, como Ubuntu 20.04, este comando puede estar obsoleto en favor de `ip`.

   ```bash
   ifconfig
   ```

2. **ip**: `ip` es una herramienta más moderna y versátil que `ifconfig` para la configuración de red en Linux. Para ver información sobre las interfaces de red y el tráfico, puedes usar el siguiente comando:

   ```bash
   ip -s link
   ```

   Esto mostrará información detallada sobre las interfaces de red y sus estadísticas.

3. **netstat**: El comando `netstat` muestra una variedad de estadísticas de red, incluyendo conexiones activas, tablas de enrutamiento y estadísticas de interfaz. Puedes usarlo de la siguiente manera:

   ```bash
   netstat -i
   ```

   Esto mostrará estadísticas de interfaz de red, incluyendo el tráfico de entrada y salida.

4. **nload**: `nload` es una herramienta que proporciona una vista en tiempo real del tráfico de red en una interfaz específica. Puedes instalarlo si no está presente en tu sistema y luego ejecutarlo con el nombre de la interfaz que deseas monitorear:

   ```bash
   sudo apt-get install nload  # Para instalar nload en sistemas basados en Debian/Ubuntu
   nload eth0  # Reemplaza "eth0" con el nombre de tu interfaz de red
   ```

   `nload` proporcionará una vista en tiempo real del ancho de banda de entrada y salida en esa interfaz.

5. **tcpdump**: `tcpdump` es una herramienta de captura de paquetes que te permite analizar el tráfico de red en detalle. Puedes usarlo para capturar paquetes en una interfaz y luego analizarlos posteriormente. Para capturar tráfico en una interfaz específica:

   ```bash
   sudo tcpdump -i eth0  # Reemplaza "eth0" con el nombre de tu interfaz de red
   ```

   Este comando capturará paquetes en la interfaz especificada en tiempo real.

Recuerda que la mayoría de estos comandos pueden requerir privilegios de superusuario (usar `sudo`) para acceder a toda la información sobre el tráfico de red. Además, asegúrate de tener las herramientas necesarias instaladas en tu sistema antes de intentar usarlas.
#linux_comandos
