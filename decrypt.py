from cryptography.fernet import Fernet


files = open("/home/cleraude/Python-Crypto/key.py", "rb")
key = files.read()
files.close()

a = open("/home/cleraude/Python-Crypto/texte.txt.encrypted", "rb")
b = a.read()

c = Fernet(key)
token = c.decrypt(b)

with open("/home/cleraude/Python-Crypto/texte.txt.decrypted", "wb") as fichier:
	fichier.write(token)




