Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


# Introduction
- Help users to find local product around them!
- Opensource Project Ruby on Rails (MVC)

# Stuff
- API endpoint: https://opendata.agencebio.org/api/gouv/operateurs/
- gems :
  - geocoder --> find longitude and latitude for an address
  - mapbox --> display map

# Questions and reflexions
- In a MVC with fetching API who had to fetch the data ( out of the MVC or the M or the C)?
- What about the data from the resquest, should we saved it in the DB or just keep it temporary for the view to the user.
- relfexion => tout scrapper pour mettre dans la DB // comment savoir la fréquence de mise à jour de l'api.
- créer une table produits ( pour les différents légumes, fruits => courgettes, carottes etc..)
- p2 // laisser une interface pour les producteurs non référencé sur l'API afin qu'un tiers puisse le rajouter.
- p2 // de la data from API et de la data from création des artisans (eux-meme)

- optional features :
recherche + recherche avancée ( avec radio button pour filtre par catégories et activités)


# Data Base structure

*** shops ***

- MODEL:
  - add 2 columun longitude and latitude as a float
  - name
  - address
  - descriptif
  - products (foreign key)
  - categories: (foreign key)
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

- CONTROLLER:
  - compararer avec localisation ( long, lat ) du shop
  - filtrer par rayon d'action ( 10km, 20km etc)
  - user's location ( for model user) ( mylocation)
  OR
  - input address searchbar


*** users ***

- MODEL:
  - first name
  - last name
  - date de naissance
  - adresse mail
  - (adresse de livraison)

- CONTROLLER: (handled by devise)

*** products ***
(comment faire des famille de produits ex: )
- nom du produit
- (type ( foreign key))

*** catégories ***
- MODEL:
  - name

*** activities ***
- MODEL:
  - name

*** product_type ***
- MODEL:
  - name
