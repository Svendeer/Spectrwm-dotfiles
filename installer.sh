
#!/bin/bash
# Install my dotfiles for spectrwm

intro(){
	clear
	
	echo " ____                  _      __        ____  __    ____           ____                     _                  "
	echo "/ ___| _ __   ___  ___| |_ _ _\ \      / /  \/  |  | __ ) _   _   / ___|_   _____ _ __   __| | ___  ___ _ __   "
	echo "\___ \| '_ \ / _ \/ __| __| '__\ \ /\ / /| |\/| |  |  _ \| | | |  \___ \ \ / / _ \ '_ \ / _  |/ _ \/ _ \ '__|  "
	echo " ___) | |_) |  __/ (__| |_| |   \ V  V / | |  | |  | |_) | |_| |   ___) \ V /  __/ | | | (_| |  __/  __/ |   _ "
	echo "|____/| .__/ \___|\___|\__|_|    \_/\_/  |_|  |_|  |____/ \__, |  |____/ \_/ \___|_| |_|\__,_|\___|\___|_|  (_)"
	echo "      |_|                                                 |___/   											 "

	sleep 3
}
installRequeriments(){
	echo "****************************************************************************************************************"
	echo "Instalando requerimentos previos..."
	sleep 5

	sudo pacman -S spectrwm xlockmore xterm pamixer light pcmanfm scrot rofi alacritty w3m feh git wmctrl lsd ueberzug vim picom zsh --needed --noconfirm
}

initialConfigs(){
	echo ""
	echo "****************************************************************************************"
	echo "Aplicando configuraciones iniciales para el gestor de ventanas."
	echo "Lea el fichero '.spectrwm.conf' para poner atajos, comandos y programas personalizados."
	echo "Revisa el fichero 'manual-explicativo.txt' para una explicacioón al respecto."
	sleep 5
	
	echo ""
	echo "****************************************************************************************************************"
	cp -v .spectrwm.conf $HOME
	sleep 2
	cp -v .spectrwm_es.conf $HOME
	sleep 2
	cp -v Baraction.sh $HOME/.config
	sleep 2
	cp manual-explicativo-spectrwm.txt $HOME
	sleep 2
}

installFonts(){
	echo "****************************************************************************************************************"
	echo "Instalando fuentes necesarias. Esto requiere acciones de superusuario."
	sleep 5
	sudo cp -v fonts/* /usr/share/fonts
}

setTerminals(){
	echo ""
	echo "****************************************************************************************************************"
	echo "Aplicaremos las configuraciones de las terminales, en este caso, Alacritty."
	sleep 5
	cp .Xresources $HOME
	sleep 2
	mkdir -p $HOME/.config/alacritty
	cp -rv alacritty/alacritty.yml $HOME/.config/alacritty
	sleep 2
}

setRanger(){
	echo ""
	echo "****************************************************************************************************************"
	echo "Config para Ranger, esto necesita tener instalado w3m."
	sleep 5
	cp -rv ranger ~/.config/
}

setVim(){
	echo ""
	echo "****************************************************************************************************************"
	echo "Si usas vim, ahí va una ayudita ;) Úsalo bajo zsh, ya que con bash, por alguna razón que desconozco, no se ve bien."
	sleep 5
	cp -v .vimrc $HOME
	sleep 2
	cp -rv .vim $HOME
	sleep 2
}

setBashTheme(){
	echo "Aplicando tema de bash, una modificación al de ParrotOS."
	sleep 3
	cp  -rv.bashrc $HOME/.bashrc
	cd ..
}

finish(){
	clear && neofetch
	sleep 5
	echo "Enhorabuena, has finalizado la instalación y configuración de SpectrWM."
	sleep 5
}

intro
installRequeriments
initialConfigs
installFonts
setTerminals
setRanger
setVim
setBashTheme
finish
