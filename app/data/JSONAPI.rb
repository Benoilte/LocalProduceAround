require "json"
require "open-uri"

url = "https://opendata.agencebio.org/api/gouv/operateurs"
# url = "https://opendata.agencebio.org/api/gouv/operateurs/?q=nantes"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)

puts "#{user["name"]} - #{user["bio"]}"
