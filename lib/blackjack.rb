require 'pry'

def deal_card
  card= rand(1...11)
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
  cardone=deal_card()
  cardtwo=deal_card()
  sum= cardone+cardtwo
  display_card_total(sum)
  return sum

end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def get_user_input

  input=STDIN.gets.chomp
  return input


end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  else input=="s"
    total
  end
  # binding.pry
end




def invalid_command
  puts "This is an invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  count = initial_round
  while count < 21
    count = hit?(count)
    display_card_total(count)
  end
  end_game(count)
end

