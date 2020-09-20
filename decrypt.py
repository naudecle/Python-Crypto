from cryptography.fernet import Fernet


files = open("key.py", "rb")
key = files.read()
files.close()

a = open("texte.txt", "rb")
b = a.read()

c = Fernet(key)
token = c.decrypt(b)

with open("texte.txt.decrypted", "wb") as fichier:
	fichier.write(token)




