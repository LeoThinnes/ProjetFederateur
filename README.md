# app-proprio
Application côté propriétaire.

## Récupération des dépendences
flutter pub get

<br>
<br>


# <span style="color: orange"> GIT </span>

## <span style="color: orange"> Règles GIT </span>
Aucun commit sur la branche "main".
La branche principale est la branche "develop".
Créer une nouvelle branche à partir de la branche "develop" pour tout nouvel ajout de code.

## <span style="color: orange"> Règles de nommage GIT </span>
Nom d'une nouvelle branche : nom compréhensible (nommer par le nom de l'US s'il s'agit d'une US). Nom en minuscule, majuscule pour marquer les espaces.

<span style="color: green"> Exemples : </span> <br>
git checkout -b US3-myNewBranch <br>
git checkout -b myNewBranch 


Messages de commits :
Les messages de commit se font en **ANGLAIS**. Ils doivent être clairs et bien écrit.
Chaque message de commit **DOIT** être préfixé d'un tag.
- [<span style="color: brown">FEAT</span>] : ajout d'une nouvelle fonctionnalité
- [<span style="color: brown">FIX</span>] : réglage d'un bug
- [<span style="color: brown">REV</span>] : revue/refactoring/commentaires de code
- [<span style="color: brown">TEST</span>] : création de tests

<span style="color: green"> Exemples : </span>
- [<span style="color: brown">FEAT</span>] Artisans listview added on page list_artisan
- [<span style="color: brown">FIX</span>] Checkboxes are now working as expected
- [<span style="color: brown">REV</span>] Global review with comments added and some code clean
- [<span style="color: brown">TEST</span>] Widget [widget_name] test created


## <span style="color: orange"> Règles de merge : </span>
La personne ayant terminé sa branche doit faire une MERGE REQUEST. <br>
**INTERDICTION** de merge sa propre merge request. Cela doit passer obligatoirement par un autre membre de l'équipe.

## <span style="color: orange">Sanctions</span>

Pour toute transgression des règles de nommage GIT, le déviant devra acheter des chouquettes pour toute l'équipe.