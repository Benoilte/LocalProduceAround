require "json"
require "open-uri"

# Appel de toute la data: endpoint principal: https://opendata.agencebio.org/api/gouv/operateurs/
# url = "https://opendata.agencebio.org/api/gouv/operateurs"

# url = "https://opendata.agencebio.org/api/gouv/operateurs/?q=nantes"
# object_serialized = URI.open(url).read
# object_parsed = JSON.parse(object_serialized)
# puts object_parsed

# puts "#{object_parsed["items"]}"


# Version où l'on place en paramètre dans l'url la ville:
url = "https://opendata.agencebio.org/api/gouv/operateurs/?q="
