def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  # code #initial_round here
  hand = deal_card + deal_card
  display_card_total(hand)
  return hand
  
end

def end_game(total = display_card_total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  return input
end

def hit?(card)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h" 
    deal_card + card
  else
    card
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
 


 
end
    