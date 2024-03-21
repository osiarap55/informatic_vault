Para deshabilitar IPv6 en Linux, puedes seguir estos pasos:

Nota importante: Antes de deshabilitar IPv6, debes tener en cuenta que IPv6 es una parte fundamental de la infraestructura de Internet y deshabilitarlo puede causar problemas de conectividad. Solo debes hacerlo si tienes una razón específica para hacerlo, como solucionar un problema de red o por razones de seguridad.

**Método 1: Temporalmente (hasta el próximo reinicio):**

Puedes deshabilitar IPv6 temporalmente hasta que reinicies el sistema. Esto no afectará la configuración permanente de IPv6.

1. Abre una terminal.

2. Ejecuta el siguiente comando para deshabilitar IPv6 temporalmente:

   ```bash
   sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
   ```

3. Puedes verificar que IPv6 se ha deshabilitado ejecutando:

   ```bash
   cat /proc/sys/net/ipv6/conf/all/disable_ipv6
   ```

   Debería devolver "1" si IPv6 está deshabilitado.

**Método 2: Permanentemente (requiere reinicio):**

Para deshabilitar IPv6 de forma permanente, debes editar algunos archivos de configuración.

1. Abre un editor de texto como superusuario. Puedes usar `nano`, `vim` o cualquier otro editor de texto que prefieras:

   ```bash
   sudo nano /etc/sysctl.conf
   ```

2. Agrega las siguientes líneas al final del archivo para deshabilitar IPv6:

   ```
   # Deshabilitar IPv6
   net.ipv6.conf.all.disable_ipv6 = 1
   net.ipv6.conf.default.disable_ipv6 = 1
   ```

3. Guarda el archivo y ciérralo.

4. Luego, ejecuta el siguiente comando para aplicar los cambios:

   ```bash
   sudo sysctl -p
   ```

5. Para desactivar temporalmente IPv6 en la sesión actual sin reiniciar, puedes ejecutar:

   ```bash
   sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
   sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
   ```

Recuerda que, si deshabilitas IPv6 de forma permanente, algunos servicios y aplicaciones que dependen de IPv6 pueden dejar de funcionar correctamente. Siempre es recomendable investigar y comprender las implicaciones antes de deshabilitar IPv6 en un sistema Linux.
#protocolos_informaticos
