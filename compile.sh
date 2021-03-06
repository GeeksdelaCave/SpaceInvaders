#!/bin/sh

## Compilation avec SFML en DERNIER RECOURS -*- compile.sh -*-.
## @author Tristan Dietz
## @file compile.sh



#### EN-TETES ####
# Liaison des en-tête de la librairie SFML pour le compilateur.
g++ -c *.cpp *.h -std=c++11 -ISFML-2.3.2/include

#### BIBLIOTHEQUES ####
# Indication au chargeur de bibliothèques d'où elles se trouvent
export LD_LIBRARY_PATH=SFML-2.3.2/lib

#### MODULES ####
# Liaision des modules system et audio avec l'exécutable
g++ *.o -o SpaceInvaders -LSFML-2.3.2/lib -lsfml-audio -lsfml-system

#### PERMISSIONS ####
# Pour rendre le fichier exécutable
chmod +x SpaceInvaders

#### LANCEMENT ####
./SpaceInvaders
