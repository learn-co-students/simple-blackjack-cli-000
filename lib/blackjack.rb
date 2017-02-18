require 'pry'

def welcome
  # code #welcome here
    puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
    return 1 + rand(11)
end

def display_card_total(value)
  # code #display_card_total here
    puts "Your cards add up to #{value}"
end

def prompt_user
  # code #prompt_user here
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
    return gets.chomp
end

def end_game(score)
  # code #end_game here
    puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
    initial_score = deal_card() + deal_card()
    display_card_total(initial_score)
    return initial_score
end

def hit?(current_total)
  # code hit? here
    prompt_user()
    input = get_user_input()

    if input == "h"
        card = deal_card()
        current_total += card
    elsif input == "s"
    else
        invalid_command()
        promt_user()
    end
    
    return current_total
end

def invalid_command
  # code invalid_command here
    puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
    welcome()
    score = initial_round()
    
    while score < 21 do
        score = hit?(score)
        display_card_total(score)
    end
    
    end_game(score)
    
end