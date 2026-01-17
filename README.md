# 🎧 HUB Welcome Music (v1.0)

[cite_start]Este plugin para **AMX Mod X** permite recibir a los jugadores con música personalizada y un menú de reglas obligatorio para limpiar la pantalla y continuar jugando.

## ✨ Características
* [cite_start]**Menú de Bienvenida**: Presenta un menú centrado con reglas que el usuario debe aceptar presionando la tecla [1][cite: 2].
* [cite_start]**Audio de Entrada**: Reproduce automáticamente el archivo `bienvenida.wav` al conectar.
* [cite_start]**HUD Persistente**: Utiliza el canal fijo `4` para mostrar el mensaje de bienvenida de forma clara[cite: 2, 3].
* [cite_start]**Limpieza Automática**: Al confirmar, el sonido se detiene y el mensaje HUD se borra instantáneamente mediante un método de borrado seguro[cite: 4, 5].

---

## 🛠️ Guía de Instalación Paso a Paso

Sigue estos pasos para instalar el plugin correctamente en tu servidor:

### 1. Subir los archivos de sonido
* Ubica el archivo `bienvenida.wav`.
* [cite_start]Súbelo a la carpeta de tu servidor en: `cstrike/sound/misc/`.

### 2. Instalar el archivo compilado
* [cite_start]Ubica el archivo `hub_welcome_music.amxx`[cite: 1].
* Súbelo a la carpeta: `cstrike/addons/amxmodx/plugins/`.

### 3. Agregar el Código Fuente (Opcional)
* [cite_start]Si deseas realizar modificaciones, guarda el archivo `hub_welcome_music.sma` en: `cstrike/addons/amxmodx/scripting/`.

### 4. Activar el Plugin
* Ve a la carpeta `cstrike/addons/amxmodx/configs/`.
* Abre el archivo `plugins.ini` con un editor de texto.
* Al final del archivo, agrega la siguiente línea:
  ```text
  hub_welcome_music.amxx
