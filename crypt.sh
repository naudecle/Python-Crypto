#!/bin/bash




if [ -e texte.txt ] <<< "~/Python-Crypto/toCrypt"; then
	python3 crypt.py 
	cp ~/Python-Crypto/texte.txt.encrypted ~/Python-Crypto/crypted/texte.txt.encrypted
	cp ~/Python-Crypto/texte.txt.encrypted ~/Python-Crypto/toDecrypt/texte.txt.encrypted
	exit 0
else

	cp ~/Python-Crypto/texte.txt ~/Python-Crypto/toCrypt/texte.txt
	python3 crypt.py
	cp ~/Python-Crypto/texte.txt.encrypted ~/Python-Crypto/crypted/texte.txt.encrypted
	cp ~/Python-Crypto/texte.txt.encrypted ~/Python-Crypto/toDecrypt/texte.txt.encrypted
	exit 0
fi
