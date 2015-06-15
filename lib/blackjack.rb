def deal_card
  num = rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  # code #display_card_total here
    puts "Your cards add up to #{card_total}"
    return card_total
end

def welcome
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  first = deal_card
  second = deal_card
  display_card_total(first + second)
end

def end_game(num)
  if num > 21
    puts "Sorry, you hit #{num}. Thanks for playing!"
  end
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def hit?(num = deal_card)
  prompt_user
  user_says = get_user_input
  if user_says == "s"
    num
  elsif user_says == "h"
    num += deal_card
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 card_number_total = initial_round
    until card_number_total > 21
        card_number_total = hit?(card_number_total)
        display_card_total(card_number_total)
    end
end_game(card_number_total)
        
end





    