# Spectrwm-dotfiles
Configuración personal de SpectrWM.

 __  __                         _
|  \/  | __ _ _ __  _   _  __ _| |
| |\/| |/ _` | '_ \| | | |/ _` | |
| |  | | (_| | | | | |_| | (_| | |
|_|  |_|\__,_|_| |_|\__,_|\__,_|_|

Spectrwm trabaja bajo un archivo ubicado en la carpeta del usuario, llamado .spectrwm.conf
En dicho fichero puedes definir aplicaciones que se iniciarán al inicio, atajos de teclado y configuraciones adicionales.
Dicho archivo trae algunos comentarios útiles para que te sea mas fácil entender todo.

Antes de comenzar, vale aclarar que la tecla principal (o Mod), es la tecla de Windows, pero puedes cambiarla buscando la línea que diga
modkey = Mod4

Si quieres la tecla de Alt, esa se llama Mod1

En este manual (si se le puede llamar así), doy unos pequeños ejemplos al respecto:

1. Agregar atajos de teclado

La forma general de agregarlos es la siguiente:
#program[alias_de _programa] = programa
#bind[alias_de_programa]    = combinacion+de+teclas+a+usar

Por ejemplo, el atajo de teclado de la terminal st.

program[term] 	    = st
bind[term] 		= Mod+Shift+Return

2. Los autostart

Autostart, son los programas que se inician automáticamente cuando inicia el gestor. La manera de definirlos es la siguiente:

autorun = ws[espacio_de_trabajo]: programa

Ejemplo:
autorun = ws[1]: nitrogen --restore

Algunos de los atajos de teclado que ya trae son:

Mod+Return: abrir ST
Mod+Shift+Return: abrir alacritty
Mod1+Return: abrir uxterm
Mod+P: abrir rofi (también puedes abrirlo presionando la tecla F4)
Mod+Shift+P: abre pcmanfm

Luego, puedes agregar los atajos para los navegadores que vayas a utilizar y demás programas. Espero que disfrutes de este gestor de ventanas ultra minimalista.

____________________________________________________________________________________________________________________________________________________________________________________

Fichero .bashrc

El prompt de bash viene con una ayuda para los desarrolladores: la integración de un indicador de git en el prompt, para detectar cambios hechos en el repositorio.
Dicho prompt no es mío, puedes verlo aquí: https://github.com/romkatv/gitstatus.git. Sólo me he dado a la tarea de agregarlo a mi prompt de bash para tenerlo un poco más completo.
Además, el fichero .bashrc trae alias personalizados, para hacer mas rápido el trabajo. Dichos alias se detallan acontinuación:

alias s="sudo"
alias p="pacman"
alias v="vim"
alias sv="sudo vim"
alias l="ls -la"
alias la="ls -la"
alias mv="mv -v"
alias cf="cd ~/.config"
alias sp="sudo pacman"
alias py="python3"
alias cl="clear"
alias sc="source"
alias r="ranger"
alias x="exit"
alias pof="poweroff"
alias gc="git clone"
alias gm="git commit -m"
alias gl="git log"
alias ga="git add"
alias gs="git status"
alias ..="cd .."
alias rm="rm -rfv"
alias cp="cp -v"
alias archfetch="sh ~/.config/ArchFetch.sh"

_________________________________________________________________________________________________

Colores, fuentes y fondos de la barra de estado del gestor de ventanas.
Los colores, fuentes y fondos se definen en formato rgb. Pero, es sencillo: basta con que instales el programa gcolor, selecciones el color que te guste, ir al archivo de configuración y hacer lo siguiente:

Color: 800000

rgb: 80/00/00

Como ves, solo debes poner el slash entre cada par de números.

Luego, se invocan usando la siguiente sintaxis: +@fg=x; +@gb=x;

Donde X es el número de línea que ocupa el color, empezando desde el 0.

Fuentes.
Las fuentes también se definen así: Hack Nerd Font:size=9:antialias=true
Se invocan usando: +@fn=x;

Donde x es el número de la fuente, empzando por 0.

Si quieres profundizar un poco mas, puedes abrir una terminal y ejecutar:
man spectrwm

Esto abrirá el manual del gestor de ventanas, eso sí: en inglés.

###################################

Algunos atajos de teclado:
Mod+T: crear ventana flotante;
Mod+X: Cerrar ventana actual;
Mod+Shift+{num}: mover ventana actual hacia un escritorio;
Mod+{num}: ir a un escritorio;
Mod+P: abrir rofi;
Mod+Shift+P: Abrir PcmanFM;
Mod+Shift+T: abrir Telegram;
Mod+Enter: abrir ST;
Mod+Shift+Enter: abrir alacritty;
Mod+Q: recargar el gestor de ventana;
Mod+Shift+Q: salir del gestor de ventanas;
Mod1+S: hacer captura de pantalla. (Mod1 = Tecla alt).

