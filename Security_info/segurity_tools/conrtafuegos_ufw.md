Comandos básicos de UFW:

    Habilitar UFW:

    bash

sudo ufw enable

Esto activará UFW y lo configurará para iniciarse automáticamente en el arranque.

Desactivar UFW:

bash

sudo ufw disable

Esto desactivará UFW y detendrá su ejecución.

Permitir tráfico para un puerto específico:

bash

sudo ufw allow <puerto>/tcp

Reemplaza <puerto> con el número del puerto que deseas permitir.

Denegar tráfico para un puerto específico:

bash

sudo ufw deny <puerto>/tcp

Permitir tráfico para un rango de puertos:

bash

sudo ufw allow <rango-de-puertos>/tcp

Reemplaza <rango-de-puertos> con el rango de puertos que deseas permitir, por ejemplo, "80:90".

Permitir tráfico desde una dirección IP específica:

bash

sudo ufw allow from <dirección-IP>

Reemplaza <dirección-IP> con la dirección IP desde la que deseas permitir el tráfico.

Permitir tráfico para una aplicación específica:

bash

sudo ufw allow <nombre-de-aplicación>

Reemplaza <nombre-de-aplicación> con el nombre de la aplicación para la cual deseas permitir el tráfico. UFW intentará buscar el número de puerto asociado a esa aplicación.

Verificar el estado de UFW:

bash

sudo ufw status

Esto mostrará el estado actual del firewall y las reglas aplicadas.

Verificar las reglas detalladas:

bash

sudo ufw status verbose

Esto mostrará información más detallada sobre las reglas, incluyendo el número de puerto y el tipo de protocolo.

Restablecer todas las reglas:

bash

    sudo ufw reset

    Esto eliminará todas las reglas y restablecerá UFW a su estado predeterminado.

Estos son solo algunos comandos básicos de UFW. Puedes ajustar y personalizar las reglas según tus necesidades específicas. Asegúrate de tener acceso de administrador (usando sudo) al ejecutar estos comandos.
#segurity_tools
