def deal_card
  rand(1..11)
end

def display_card_total(card_total)
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
    sum = deal_card + deal_card
    display_card_total(sum)
end

def end_game(lost)
  puts "Sorry, you hit #{lost}. Thanks for playing!"
end

def get_user_input
  gets.chomp
end

def hit?(total)
    prompt_user
    input = get_user_input
          if input == "h"
                total += deal_card
          elsif input == "s"
                total
          else
                invalid_command
          end
    sum = total
    sum
end

def invalid_command
  puts "Try Again"
  get user_input
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
    