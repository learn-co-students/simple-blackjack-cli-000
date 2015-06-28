def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(sum)
  # code #display_card_total here
  puts "Your cards add up to #{sum}"
  
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
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def hit?(sum)
  # code hit? here
  prompt_user
  input = get_user_input
    if input == "s"
       return sum
    elsif input == "h"
       return sum + deal_card
    end
end

def invalid_command
    # code invalid_command here
    puts "Invalid command, please try again!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    total = initial_round
        until total > 21 do
        total = hit?(total)
        display_card_total(total)
    end
    
    end_game(total)
end
    