tâches de Aubin JOSI le padawan :

Objectif global : construire l'application selon un modèle en couches / layers, c'est-à-dire :
- frontend
- controllers : responsables de recevoir les requêtes du navigateur et de lui retourner les données (html pour les vues, ou json pour les données)
- services / repositories : responsables de l'accès aux données, dans les deux sens. S'occupe de requêter la BDD
- base de données

Ce modèle doit être, pour plus de simplicité, reflété par l'organisation du code. Notamment, il faut avoir des classes `Controller` et `Repository` qui ont comme seules responsabilités celles de leur couche. 

# BDD

1. MCD
2. Création de la base

# BackEnd

## Réception des requêtes

Faire appeler les controllers à partir du routing.
Un controller par type d'objet est une approche naïve qui ne pose pas problème.

Typiquement, un `ApprenantController` aura des méthodes `Get` ou `Index` pour l'affichage des pages ou retourner des données, et des méthodes `Update` ou `Delete` pour la modification de données. 

## CRUD operations
- Cours
- Promotions
- Apprenants

--> faire un repository par entité, avec une méthode par opération 
Ex : dans un `ApprenantRepository`, on pourra trouver des méthodes comme `GetApprenantById(id)`, `GetAllApprenants()`, `GetApprenantsByPromotion(idPromotion)`


# FrontEnd





# TODO list

1. Faire un  exemple d'écran affichant des données. Exemple : écran affichant l'ensemble des promotions.
    
    1. Faire un PromotionRepository, avec une méthode `GetAll` qui se connecte à la BDD et retourne toutes les promotions
    2. Faire un PromotionController, avec une méthode `GetAll` qui retournera la vue de l'étape suivante (se servir de la méthode render)
    3. Faire une vue `promotions_list.php` qui se charge de l'affichage d'un tableau d'objets de type `Promotion`, avec les colonnes définies dans la maquette. Pour commencer, ne pas se soucier des boutons en bout de ligne (soit boutons sans logique, soit ne rien mettre)
    4. Se charger du fait de peupler la vue avec les données retournées par le repository
    5. Tester sur une page bidon, c'est-à-dire par exemple uniquement un texte bidon, un bouton pour faire l'appel au serveur et un endroit où afficher le tableau



