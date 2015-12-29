require 'pry'


def welcome
  puts  "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(sum)
  if sum > 21
    puts "Sorry, you hit #{sum}. Thanks for playing!"
    return sum
  end
end

def initial_round
  2.times do
    deal_card
  end
    sum = deal_card + deal_card
    display_card_total(sum)
  return sum
end

def hit?(display_card_total)
    prompt_user
      input = get_user_input
      if input == "s"
        return display_card_total
      elsif input == "h"
          :deal_card
          new_sum = (deal_card + display_card_total)
        return new_sum
      else input != "h" || "s"
        invalid_command
      end
  return new_sum
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x= initial_round
  until x > 21 do
    x = hit?(x)
    display_card_total(x)
  end
    end_game(x)
end
