#!/bin/bash




if [ -e texte.txt ] <<< "/home/cleraude/Python-Crypto/toCrypt"; then
	python3 /home/cleraude/Python-Crypto/crypt.py 
	cp /home/cleraude/Python-Crypto/texte.txt.encrypted /home/cleraude/Python-Crypto/crypted/texte.txt.encrypted
	cp /home/cleraude/Python-Crypto/texte.txt.encrypted /home/cleraude/Python-Crypto/toDecrypt/texte.txt.encrypted
	exit 0
else

	cp /home/cleraude/Python-Crypto/texte.txt /home/cleraude/Python-Crypto/toCrypt/texte.txt
	python3 /home/cleraude/Python-Crypto/crypt.py
	cp /home/cleraude/Python-Crypto/texte.txt.encrypted /home/cleraude/Python-Crypto/crypted/texte.txt.encrypted
	cp /home/cleraude/Python-Crypto/texte.txt.encrypted /home/cleraude/Python-Crypto/toDecrypt/texte.txt.encrypted
	exit 0
fi
