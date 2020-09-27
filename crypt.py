from cryptography.fernet import Fernet


files = open("/home/cleraude/Python-Crypto/key.py", "rb")
key = files.read()
files.close()

a = open("/home/cleraude/Python-Crypto/texte.txt", "rb")
b = a.read()

c = Fernet(key)
token = c.encrypt(b)

with open("/home/cleraude/Python-Crypto/texte.txt.encrypted", "wb") as fichier:
	fichier.write(token)




