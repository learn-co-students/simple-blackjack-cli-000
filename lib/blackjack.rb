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
  running_total = current_total
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    running_total += deal_card
  elsif user_input == 's'
    running_total
  end
  running_total
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
  first_round = 0 #to keep from displaying total cards twice on intial round

  hand_total = initial_round
  #hand_total += hit?(hand_total)

  until hand_total > 21

    hand_total = hit?(hand_total)
    display_card_total(hand_total)
  
    
    first_round = 1
  end
  end_game(hand_total)

end
   

   #runner 
