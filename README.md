# Python-Crypto

## fichier d'installation

# Pour vous guider a faire le cryptage et le decryptage du fichier texte.txt

# 1

Ouvrez un terminal et execute ce commande dans la meme partie ou vous avez clone le projet.

Execute le code suivant:

```sh
git clone https://github.com/naudecle/Python-Crypto.git

./install.sh

```

Au cas ou que ca ne marche pas parce que vous n avez pas donne les droits d execution, veuillez faire ainsi:

```sh
chmod +x install.sh
```

et la suite est d'executer la commande precedente.

# 2

Apres avoir execute cette comande, ouvre un nouveaux terminale, dans celle si
vous allais devoir sourcer votre fichier '.bashrc' pour pouvoir en quelque 
sorte le mettre a jours de dernier modification qui ont eu lieux dans le fichier 
'.bashrc' apres l'installation du Python-Crypto
Pour pouvoir le source le source tapez la comande
```sh
$ source ./.bashrc
```

# Maintenant vous pouvez executer vos services avec les commandes suivantes

## pour le cryptage:
```sh
sudo systemctl enable crypt.service
sudo systemctl start crypt.service
```

## pour le decryptage

```sh
sudo systemctl enable decrypt.service
sudo systemctl start decrypt.service
```
