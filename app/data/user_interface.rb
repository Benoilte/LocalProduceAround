def welcome
  puts "Welcome to PokeCode"
end

def ask_for_city
  puts "What's is the city you're looking for?"
  gets.chomp
end

def ask_for_produce_type
  puts "What's is the produce_type you're looking for?"
  gets.chomp.to_i
end

def display_shop(shop)
  puts "Here's your shop:"
  puts shop
end

def ask_user_if_display_shop
  puts "Do you want to see this shop?[y|n]"
  gets.chomp
end

def bye
  "See you!"
end
