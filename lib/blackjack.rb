def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def welcome
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def end_game(number_over_21)
  puts "Sorry, you hit #{number_over_21}. Thanks for playing!"
end

def get_user_input
  user_input = gets.chomp
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  elsif input == "s"
    nil
  else
    invalid_command(total)
  end
  total
end

def invalid_command
  puts "That is an invalid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_hand = initial_round
  until current_hand>21
    current_hand = hit?(current_hand)
    display_card_total(current_hand)
  end
  end_game(current_hand)
end
    