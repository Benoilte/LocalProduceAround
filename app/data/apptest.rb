require_relative "user_interface"
require_relative "fetch_API_producteurEtArtisanLocauxBio_service"

# welcome user
welcome

# ask the user the a city
city = ask_for_city

# We fetch shop data from API
# we instantiate a pokemon with this data
shop = fetch_shop_service(number)

# we display shop infos to user
display_shop(shop)

# we ask user if he/she wants to see the pokemon
answer = ask_user_if_display_shop

# if yes, open pokemon picture
if answer == "y"
  `open #{shop.picture_url}`
end

bye
# 3 concerns:
# - interaction with API
# - data modelisation and behvaior
# - interaction with user / (human) interface
