#!/bin/bash

if [ -e texte.txt.encrypted ] <<< "~/Python-Crypto/toDecrypt"; then
	python3 decrypt.py
	cp ~/Python-Crypto/texte.txt.decrypted ~/Python-Crypto/decrypted/texte.txt.decrypted
else
	cp ~/Python-Crypto/texte.txt.encrypted ~/Python-Crypto/toDecrypt/texte.txt.encrypted
	python3 decrypt.py
	cp ~/Python-Crypto/texte.txt.decrypted ~/Python-Crypto/decrypted/texte.txt.decrypted
fi
