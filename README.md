# HUB-Welcome-Music
🎧 HUB Welcome Music (v1.0)
Este plugin para AMX Mod X permite recibir a los jugadores con música personalizada y un menú de reglas obligatorio para limpiar la pantalla y continuar jugando.

✨ Características

Menú de Bienvenida: Muestra reglas básicas del servidor al conectar.


Audio de Entrada: Reproduce automáticamente el archivo bienvenida.wav.


HUD persistente: Utiliza el canal fijo 4 para mostrar el mensaje de bienvenida de forma clara.


Limpieza Automática: Al presionar [1], el sonido se detiene y el mensaje HUD se borra instantáneamente para no estorbar la vista.

🛠️ Guía de Instalación Paso a Paso
Sigue estos pasos para instalar el plugin correctamente en tu servidor:

1. Subir los archivos de sonido
Ubica el archivo bienvenida.wav.

Súbelo a la carpeta de tu servidor en: cstrike/sound/misc/.

2. Instalar el archivo compilado
Ubica el archivo hub_welcome_music.amxx.

Súbelo a la carpeta: cstrike/addons/amxmodx/plugins/.

3. Agregar el Código Fuente (Opcional)
Si deseas realizar modificaciones futuras, guarda el archivo hub_welcome_music.sma en: cstrike/addons/amxmodx/scripting/.

4. Activar el Plugin
Ve a la carpeta cstrike/addons/amxmodx/configs/.

Abre el archivo plugins.ini con un editor de texto.

Al final del archivo, agrega la siguiente línea:

Plaintext
hub_welcome_music.amxx
5. Reiniciar el Servidor
Reinicia tu servidor o cambia de mapa para que los cambios surtan efecto.

📋 Reglas Configuradas
Por defecto, el menú muestra las siguientes normas:

No usar hacks.

Respetar a los demás.

Divertirse y jugar limpio.

👤 Créditos

Autor: omarefj11 


Versión: 1.0
