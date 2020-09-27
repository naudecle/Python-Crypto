#!/bin/bash 

mkdir ~/python
way="~/python"

y="source $way/crypt.sh"
z="source $way/decypt.sh"
x=$(<~/.bashrc)
e="export PATH=$PATH:~/bin"

if [ -d ~/python ]; then
	echo "le Fichier python existe"

fi

if [ -d ~/python/bin ]; then
	
	echo "Vous avez dja clone Python-Crypto"
else
 
	git clone https://github.com/naudecle/Python-Crypto.git ~/python
fi

if grep -q "$z" <<< "$x"; then
			echo "Fichier 'decrypt.sh' est deja dans .bashrc"
else
	echo "source $way/decrypt.sh" >> ~/.bashrc
	echo "Fichier ajoute"
fi		

if grep -q "$y" <<< "$x"; then
			echo "Fichier 'crypt.sh' est deja dans .bashrc"
else
	echo "source $way/crypt.sh" >> ~/.bashrc
	echo "Fichier ajoute"
fi		

if [ -d ~/bin ]
then
	echo "Dossier existe deja"
else
	mkdir ~/bin
	
fi

if  grep -q "$e" <<< "$x"; then
	echo "le bin est deja dans le PATH"
else
	echo $e >> ~/.bashrc

fi

if [ -e UpdatePython ] <<< "~/bin" ; then

	echo "Le fichier UpdatePython est deja dans le dossier bin"
else

	cp ~/python/bin/UpdatePython ~/bin/UpdatePython
fi

if [ -e crypt.service ] <<< "/etc/systemd/system" ; then
	echo "Veuillez executer le service: 'sudo systemctl enable crypt.service' "
	echo "================================================================="
	echo "Ensuite 'sudo systemctl start crypt.service' "
	
else
	
	cp ~/python/crypt.service /etc/systemd/system/crypt.service
fi

if [ -e decrypt.service ] <<< "/etc/sytstemd/system" ; then
	echo "Veuillez executer le service: 'sudo systemctl enable decrypt.service'"
	echo "====================================================================="
	echo "Ensuite 'sudo systemctl start decrypt.service'"
else


	cp ~/python/decrypt.service /etc/systemd/system.decrypt.service
fi

