require "json"
require "open-uri"
require_relative "shop"
# Appel de toute la data: endpoint principal: https://opendata.agencebio.org/api/gouv/operateurs/
# url = "https://opendata.agencebio.org/api/gouv/operateurs"

url = "https://opendata.agencebio.org/api/gouv/operateurs/?q=nantes"
object_serialized = URI.open(url).read
object_parsed = JSON.parse(object_serialized)
p object_parsed.class
puts object_parsed["nbTotal"] # => nb total de magasin référencé aux alentours de Nantes
# p object_parsed

# TEST longitude et latitude
reference_geographique = object_parsed["items"].first["adressesOperateurs"]
# reference_geographique => {"id"=>173657,
                            # "lieu"=>"5 MAIL PABLO PICASSO",
                            # "codePostal"=>"44000",
                            # "ville"=>"NANTES",
                            # "lat"=>47.2159156,
                            # "long"=>-1.5339207,
                            # "codeCommune"=>"44109",
                            # "active"=>true,
                            # "departementId"=>46,
                            # "typeAdresseOperateurs"=>["Lieux d'activité",
                            # "Siège social"]}
puts reference_geographique.first["lat"]
puts reference_geographique.first["long"]


# TEST 2 raison sociale
# puts object_parsed["items"].first["raisonSociale"]
# => response = 7 BRASSES

# TEST 1 le premier items de obectef_parsed de la data à travailler
# puts object_parsed["items"].first
# => response =  Hash
# {
#   "id"=>84363,
#   "raisonSociale"=>"7 BRASSES",
#   "denominationcourante"=>"7 BRASSES",
#   "siret"=>"81307330100018",
#   "numeroBio"=>174019,
#   "telephone"=>nil,
#   "email"=>nil,
#   "codeNAF"=>"56.10A",
#   "gerant"=>"Gabriel CHARRIN",
#   "dateMaj"=>"2020-04-02",
#   "telephoneCommerciale"=>nil,
#   "reseau"=>"",
#   "categories"=>[{"id"=>7,"nom"=>"Grossistes"},
#                 {"id"=>5,"nom"=>"Artisans/commerçants"}],
#   "siteWebs"=>[],
#   "adressesOperateurs"=>[{"id"=>173657,
#                           "lieu"=>"5 MAIL PABLO PICASSO",
#                           "codePostal"=>"44000",
#                           "ville"=>"NANTES",
#                           "lat"=>47.2159156,
#                           "long"=>-1.5339207,
#                           "codeCommune"=>"44109",
#                           "active"=>true,
#                           "departementId"=>46,
#                           "typeAdresseOperateurs"=>["Lieux d'activité","Siège social"]}],
#   "productions"=>[{"id"=>875,
#                     "code"=>"11.0",
#                     "nom"=>"Boissons",
#                     "etatProductions"=>[{"id"=>6,"etatProduction"=>"AB"}]}],
#   "activites"=>[{"id"=>2,"nom"=>"Préparation"},
#                 {"id"=>3,"nom"=>"Distribution"}],
#   "certificats"=>[{"organisme"=>"Certipaq Bio",
#                     "etatCertification"=>"ARRETEE",
#                     "dateSuspension"=>nil,
#                     "dateArret"=>"2021-08-10",
#                     "dateEngagement"=>"2019-01-24",
#                     "dateNotification"=>"2019-01-24T15:33:21.000Z",
#                     "url"=>"https://www.certipaq.solutions/bio/certificats/fiche/54246/7-brasses-sas/"}],
#   "mixite"=>"Non"
# }


# puts "#{object_parsed["items"]}"


# Version où l'on place en paramètre dans l'url la ville:
# url = "https://opendata.agencebio.org/api/gouv/operateurs/?q="

# ******** Method Fetch ********

# We fetch shop data from API
# we instantiate a shop with this data

# def fetch_shop_service(shop_city)
#   # build url https://pokeapi.co/api/v2/pokemon/10
#   url = "https://opendata.agencebio.org/api/gouv/operateurs/?q=#{shop_city}"
#   # we call api endpoint that response with a json
#   response = URI.open(url).read
#   # we parse json
#   data = JSON.parse(response)
#   # we extract data from parsed json
#   name = data["name"]
#   height = data["height"]
#   weight = data["weight"]
#   picture_url = data["sprites"]["front_default"]
#   types = data["types"].map do |type_data|
#     type_data["type"]["name"]
#   end # => ["grass","poison"]
#   # and we build a pokemon from it
#   Pokemon.new(pokemon_number, name, height, weight, picture_url, types)
# end
