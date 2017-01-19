

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random_card = rand(1..11)
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  user = get_user_input
  if user == "s"
    card_total
  elsif user == "h"
    card_total = card_total + deal_card
    display_card_total(card_total)
    card_total
  else
    invalid_command
  end
    
end


def invalid_command
  puts "Sorry, your command is not valid, try again."
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
 / initial_round/
  card_total = hit?(initial_round)
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    

