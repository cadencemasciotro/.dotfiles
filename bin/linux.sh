#!/bin/bash
#shebang
if (uname=Linux);then #checks if operating system type is Linux
	mkdir -p ~/.TRASH #creates directory in home directory if it does not already exist
        touch .vimrc #creates .vimrc file
        mv .vimrc .bup_vimrc #renames .vimrc file to .bup_vimrc
        echo ".vimrc file was changed to .bup_vimrc">>linuxsetup.log #appends statement to linuxsetup.log
        cat ~/.dotfiles/etc/vimrc > ~/.vimrc #redirects content of vimrc file in etc directory to .vimrc
        echo "source ~/.dotfiles/etc/bashrc_custom">> ~/.bashrc #appends statement to end of .bashrc file
	
else #runs following commands if if-statement does not return true
	echo "Error">>linuxsetup.log #appends "error" to linuxsetup.log
        exit #exit command--exits program
fi

