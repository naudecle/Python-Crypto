from cryptography.fernet import Fernet

key = Fernet.generate_key()
print(key)

files = open("key.py", "wb")
files.write(key)
files.close()






