#!/bin/bash

if [ -e texte.txt.encrypted ] <<< "/home/cleraude/Python-Crypto/toDecrypt"; then
	python3 /home/cleraude/Python-Crypto/decrypt.py
	cp /home/cleraude/Python-Crypto/texte.txt.decrypted /home/cleraude/Python-Crypto/decrypted/texte.txt.decrypted
else
	cp /home/cleraude/Python-Crypto/texte.txt.encrypted /home/cleraude/Python-Crypto/toDecrypt/texte.txt.encrypted
	python3 /home/cleraude/Python-Crypto/decrypt.py
	cp /home/cleraude/Python-Crypto/texte.txt.decrypted /home/cleraude/Python-Crypto/decrypted/texte.txt.decrypted
fi
