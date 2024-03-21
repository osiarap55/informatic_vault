 un programa de terminal que te permite crear, gestionar y acceder a múltiples sesiones de terminal en una sola ventana. Puedes dividir la ventana en paneles y ejecutar diferentes comandos en cada uno de ellos. Aquí tienes algunos comandos básicos de `tmux`:

1. **Iniciar una nueva sesión de tmux:**
   ```bash
   tmux
   ```

2. **Dividir la ventana horizontalmente:**
   ```
   Ctrl-b %
   ```

3. **Dividir la ventana verticalmente:**
   ```
   Ctrl-b "
   ```

4. **Cambiar entre paneles:**
   ```
   Ctrl-b <direccion>
   ```
   Donde `<direccion>` puede ser una de las teclas de flecha (arriba, abajo, izquierda, derecha).

5. **Cerrar un panel:**
   ```
   Ctrl-b x
   ```

6. **Cerrar sesión de tmux:**
   ```
   Ctrl-b d
   ```
   Esto te llevará de vuelta al terminal normal. Puedes volver a la sesión de tmux más tarde usando `tmux attach`.

7. **Listar sesiones de tmux:**
   ```bash
   tmux list-sessions
   ```

8. **Unirse a una sesión existente:**
   ```bash
   tmux attach -t <nombre-de-sesion>
   ```

9. **Renombrar sesión actual:**
   ```
   Ctrl-b $
   ```

Estos son solo algunos de los comandos básicos de `tmux`. Puedes encontrar más información en la documentación oficial o en la página de manual (`man tmux`).
#linux_comandos
