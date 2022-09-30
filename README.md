Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


# Introduction
  - Help users to find local product around them!

# Questions and reflexions
- relfexion => tout scrapper pour mettre dans la DB // comment savoir la fréquence de mise à jour de l'api.
- créer une table produits ( pour les différents légumes, fruits => courgettes, carottes etc..)
- p2 // laisser une interface pour les producteurs non référencé sur l'API afin qu'un tiers puisse le rajouter.
- p2 // de la data from API et de la data from création des artisans (eux-meme)

- features sympa:
recherche + recherche avancée ( avec radio button pour filtre par catégories et activités)


# Data Base structure

*** shops ***
--> stuff :
gem --> geocoder ( check pour récupérer long et lat / à une adresse)
gem mapbox --> affichage de la map

--> MODEL:
- add 2 columun longitude et latitude as a float
- name
- address
- descriptif
- products ( foreign key)
- categories: ( foreign)
              Vente aux consommateurs
              Restaurants
              Magasins spécialisés
              Artisans/commerçants
              Grandes surfaces généralistes
              Grossistes
- activities: (foreign key)
              Producteur
              Distributeur
              Préparateur
              Importateur
--> CONTROLLER:
- compararer avec localisation ( long, lat ) du shop
  - filtrer par rayon d'action ( 10km, 20km etc)
  - user's location ( for model user) ( mylocation)
  ou
  - input address searchbar


*** users ***
--> MODEL:
- first name
- last name
- date de naissance
- adresse mail
- (adresse de livraison)
--> CONTROLLER: ( géré par devise)
*** products ***
(comment faire des famille de produits ex: )
- nom du produit
- (type ( foreign key))

*** catégories ***
--> MODEL:
- name
*** activities ***
--> MODEL:
- name
*** product_type ***
--> MODEL:
- name
