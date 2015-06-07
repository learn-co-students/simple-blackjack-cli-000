def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def welcome
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  total = card_1 + card_2
  display_card_total(total)
  return total
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def get_user_input
  gets.chomp
end

def hit?(sum)
  prompt_user
  answer = get_user_input
   if answer == "s"
      return sum
    elsif answer == "h"
      return sum + deal_card
    end
end

def invalid_command

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  total = hit?(total)
  if total<21
    display_card_total
    runner
  elsif total>21
    display_card_total(total)
    end_game(total)
  end
  # code runner here
end
    