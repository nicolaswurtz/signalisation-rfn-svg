# Pancartes, panneaux et signaux RFN

Voici les représentations au format vectoriel SVG des pancartes, panneaux et signaux de la signalisation ferroviaire du réseau ferroviaire national français, exploité entre autres par SNCF notamment.
La liste cherche à être exhaustive sans toutefois forcément l'être, n'hésitez pas à participer ;)
Et si quelqu'un voulait en faire une webfont ce serait super ! Donc...

# Comment contribuer ?

N'hésitez pas à faire des issues si jamais un élément n'était pas correct.

## Graphisme

Pour contribuer, ne réinventez pas la roue, prenez les éléments existants pour les modifier de façon à garantir une certaine homogénéité.

La définition des fichiers est un carré de 64px de côté, cela permet également de conserver un ratio de taille homogène au sein d'une même famille de signalisation.

Pour les pancartes, il est constitué d'un fond noir carré de 64px, un carré vide de 62px avec un contour de 4px, positionné à 1px du bord, puis d'un texte central de 32px de hauteur max, ou 24px si c'est trop long.

Le dossier `fonts` contient la police SNCF utilisée pour les pancartes.

## Nomenclature

Les fichiers respectent les noms internes du référentiel GAIA de SNCF Réseau (colonne TYPE_IF — Type d'Installation Fixe — https://data.sncf.com/explore/dataset/signalisation-permanente/table/ ).
Ils peuvent contenir des espaces et sont en **majuscules**.

Pour les pancartes à « valeur » (type `PN XX à XXXm`, ou `TIV D MOB 40`), la valeur suit le nom du signal. Pour une pancarte d'arrêt des trains à 4 ou 8 voitures, on aura donc `ARRET VOY 4V 8V`.

# Cartographie

La fonte SNCF et l'ensemble des SVG sont disponibles respectivement en PBF et en sprites pour faciliter leur utilisation avec MapBox.

# Avertissement

Ce matériel est proposé _en l'état_ et sans garantie de mise à jour ou de perfection. Veuillez l'utiliser à vos risques et périls !
