# scriptsImportantes
Repositorio de scripts importantes para hacer distintas cosas

Archivo: scriptBook.sh -> A traves de uso de pdf2ps psbook y ps2pdf permite convertir un archivo pdf a otro en el cual ya contiene la especificación de encuadernado para cualquier documento. :open_book:

Archivo: scriptFedoraInit.sh -> Script desarrollado para instalar sistemas de escritorio cinnamon y algunos modulos importantes y útiles que pueden personalizar y tener una mejor experiencia en Fedora. Después estará disponible una versión del script más actualizada el cual contendrá repositorios non-free de Fedora así como los codecs y otros reproductores... :octocat: :computer:

Archivo: scriptNVim.sh -> Script que ayuda a relacionar el .vimrc a una versión distinta que es neovim... :coffee:

Archivo scriptAMD.sh -> Script que añade repositorio de drivers privativos de AMD (Gráficos)

Archivo downloadVideo.sh -> Hace uso de la aplicación ffmpeg para descargar videos de la red a formato mp4

createCheatCodes.c -> Es un archivo que permite crear un archivo cht el cual en Recalbox de Raspberry funciona para uso de cheatcodes o mods de algunas roms

__Formato de ejemplo de entrada al programa__

```
Infinite_Health-32004948+0032
Infinite_Ammo-82000072+FFFF
Infinite_Bomb-3200006F+0063
Have_Fire_Bomb-3200006E+0002
Invincible-32000028+0001
Infinite_Slug_Cannon-33004756+0063
```

__Ejecución del programa__

```
<Path o ruta de la aplicación> <input-file> <output-file>
```

__Ejemplo del archivo de Salida__

```
cheats = 6

cheat0_desc = "Infinite_Health"
cheat0_code = "32004948+0032"
cheat0_enable = false

cheat1_desc = "Infinite_Ammo"
cheat1_code = "82000072+FFFF"
cheat1_enable = false

cheat2_desc = "Infinite_Bomb"
cheat2_code = "3200006F+0063"
cheat2_enable = false

cheat3_desc = "Have_Fire_Bomb"
cheat3_code = "3200006E+0002"
cheat3_enable = false

cheat4_desc = "Invincible"
cheat4_code = "32000028+0001"
cheat4_enable = false

cheat5_desc = "Infinite_Slug_Cannon"
cheat5_code = "33004756+0063"
cheat5_enable = false
```

Archivo rasp_3b_cam.py :snake: > Script para ejecutar con Python 3 en una Raspberry Pi 3B la cual ejecutara la cámara :camera: que puede ser conseguida por 2 USD en Aliexpress el cual puede ser ejecutado desde Command Line Interface (CLI) sin necesidad de usar un monitor u otro aditamento (Instalar el modulo )
```bash
  # Configurar y habilitar el uso del puerto de la camara en
  sudo raspi-config
  # Interfaces > Camara > Habilitar (Requiere reinicio)
  # Instalación del modulo de  python 3
  sudo apt install python3-picamera -y
```


Archivo rasp_4b_cam.py :snake: > Script para ejecutar con Python 3 en una Raspberry Pi 4B la cual ejecutara la cámara :camera: que puede ser conseguida por 2 USD en Aliexpress el cual puede ser ejecutado desde Command Line Interface (CLI) sin necesidad de usar un monitor u otro aditamento
```bash
  # Configurar y habilitar el uso del puerto de la camara en
  sudo raspi-config
  # Interfaces > Camara > Habilitar (Requiere reinicio)
  # Instalación del modulo de  python 3
  sudo apt install python3-picamera -y
```
