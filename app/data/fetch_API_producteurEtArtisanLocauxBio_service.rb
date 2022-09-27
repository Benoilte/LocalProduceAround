require "json"
require "open-uri"
require_relative "shop"
# Appel de toute la data: endpoint principal: https://opendata.agencebio.org/api/gouv/operateurs/
# url = "https://opendata.agencebio.org/api/gouv/operateurs"

# url = "https://opendata.agencebio.org/api/gouv/operateurs/?q=nantes"
# object_serialized = URI.open(url).read
# object_parsed = JSON.parse(object_serialized)
# puts object_parsed

# puts "#{object_parsed["items"]}"


# Version où l'on place en paramètre dans l'url la ville:
url = "https://opendata.agencebio.org/api/gouv/operateurs/?q="


# We fetch shop data from API
# we instantiate a shop with this data
def fetch_shop_service(shop_city, shop_category)
  # build url https://pokeapi.co/api/v2/pokemon/10
  url = "https://pokeapi.co/api/v2/pokemon/#{pokemon_number}"
  # we call api endpoint that response with a json
  response = URI.open(url).read
  # we parse json
  data = JSON.parse(response)
  # we extract data from parsed json
  name = data["name"]
  height = data["height"]
  weight = data["weight"]
  picture_url = data["sprites"]["front_default"]
  types = data["types"].map do |type_data|
    type_data["type"]["name"]
  end # => ["grass", "poison"]
  # and we build a pokemon from it
  Pokemon.new(pokemon_number, name, height, weight, picture_url, types)
end
