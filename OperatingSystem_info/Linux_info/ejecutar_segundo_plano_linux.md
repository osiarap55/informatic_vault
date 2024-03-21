Para ejecutar un script en segundo plano en Linux, puedes usar varias formas, pero aquí te mostraré dos métodos comunes:

1. **Usar el operador `&` al final del comando:**

   Puedes ejecutar un script en segundo plano simplemente agregando el operador `&` al final del comando. Por ejemplo:

   ```
   ./mi_script.sh &
   ```

   Esto ejecutará `mi_script.sh` en segundo plano.

2. **Usar el comando `nohup` (no hang up):**

   El comando `nohup` permite ejecutar un comando o script y desconectarlo del terminal actual, lo que garantiza que siga ejecutándose incluso si cierras la terminal o te desconectas de la sesión. Puedes usarlo de la siguiente manera:

   ```
   nohup ./mi_script.sh &
   ```

   Esto ejecutará `mi_script.sh` en segundo plano y redirigirá la salida estándar y de error a un archivo llamado `nohup.out` en el directorio actual.

3. **Usar `screen` o `tmux` (opciones más avanzadas):**

   Puedes usar programas como `screen` o `tmux` para crear sesiones de terminal virtuales y ejecutar tus scripts en ellas. Esto te permite administrar y desconectar las sesiones en segundo plano de manera más avanzada. Para usarlos, primero debes instalarlos si aún no lo has hecho:

   Para `screen`:

   ```
   sudo apt-get install screen
   ```

   Para `tmux`:

   ```
   sudo apt-get install tmux
   ```

   Luego, puedes crear una nueva sesión y ejecutar tu script en segundo plano dentro de la sesión:

   Con `screen`:

   ```
   screen -S mi_sesion
   ./mi_script.sh
   (Presiona Ctrl + A, seguido de D para desconectar la sesión)
   ```

   Con `tmux`:

   ```
   tmux new-session -s mi_sesion
   ./mi_script.sh
   (Presiona Ctrl + B, seguido de D para desconectar la sesión)
   ```

   Más tarde, puedes volver a conectarte a la sesión con `screen -r` o `tmux attach-session -t mi_sesion`, según la herramienta que hayas elegido.

El método que elijas dependerá de tus necesidades y preferencias personales. El operador `&` y `nohup` son opciones más simples para ejecutar un script en segundo plano, mientras que `screen` y `tmux` ofrecen un mayor control y flexibilidad para la gestión de sesiones de terminal.
#linux_info
