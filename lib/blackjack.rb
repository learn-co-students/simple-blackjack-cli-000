def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  number = rand(1..11) 
end

def display_card_total (cardtotal)
  puts "Your cards add up to #{cardtotal}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game (cardtotal)
  # code #end_game here
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  cardtotal = deal_card + deal_card
  display_card_total (cardtotal)
  return (cardtotal)
end

def hit? (cardtotal)
  # code hit? here
  prompt_user
  cardtotal += deal_card if get_user_input == "h"

  return cardtotal
    
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  print"after welcome"
  total = initial_round
    print"cardtotal = #{total}"

  while total < 22 do
    total = hit?(total)
    display_card_total(total)
  end

  end_game(total)

end
    
