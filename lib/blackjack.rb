def deal_card
  # code #deal_card here
    rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
    puts "Your cards add up to #{card_total}"
    return card_total
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
    sum = deal_card + deal_card 
    display_card_total(sum)
end

def end_game(lost)
  # code #end_game here
    
    puts "Sorry, you hit #{lost}. Thanks for playing!"
end

def get_user_input
  # code #get_user_input here
    gets.chomp
end

def hit?(total)
  # code hit? here
    prompt_user
    input = get_user_input

    # this does not feel right but it passes test... 
    # case input
    #     when "h"
    #     return deal_card*2
    # end

    if input == "h"
      total += deal_card
    elsif input == "s"
      total
    else
      invalid_command
    end

      #I want H to return a new number to represent a new card
    
    sum = total
    sum    
end


def invalid_command
  puts "Try Again"
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end

    # when cardtoal is greater then 21 it ends the game    



    