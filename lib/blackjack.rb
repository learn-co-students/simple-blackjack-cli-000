def deal_card
  rand(1..11)
end

def display_card_total c
  puts "Your cards add up to #{c}"
end

def welcome
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  hand = deal_card + deal_card
  display_card_total hand
  hand
end

def end_game c
  puts "Sorry, you hit #{c}. Thanks for playing!"
end

def get_user_input
  c = gets.chomp
end

def hit? hand
  prompt_user
  user_char = get_user_input
  if user_char == "h"
    hand = hand + deal_card
  elsif user_char == "s"
    # do nothing
  else
    invalid_command
  end
  hand

    
end

def invalid_command
  puts "That command no bueno"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

  welcome
  current_hand = initial_round
  while current_hand <= 21
    current_hand = hit? current_hand
    display_card_total current_hand
  end
  end_game current_hand
  
end
    