require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_decision = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  sum_of_cards = deal_card + deal_card
  puts "Your cards add up to #{sum_of_cards}"
  sum_of_cards
end

def hit?(current_total)
  # code hit? here
  
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    current_total += deal_card
    puts "deal Card"
  elsif user_input == 's'
    current_total
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

  welcome
  hand_total = initial_round
  

  until hand_total > 21
    display_card_total(hand_total)
    new_total = hit?(hand_total)
  end
  end_game(new_total)

end
   

   runner 
