from cryptography.fernet import Fernet
import base64

key = Fernet.generate_key()

cipher = Fernet(key)



message = "ceci est un message secret".encode('utf-8')

x = open("texte", "rb")




decode = key.decrypt(x)

print(decode)
