
#passing
def deal_card
  # code #deal_card here
  rand(1..11)
end

#passing
def display_card_total(card_total)
  # code #display_card_total here
  puts  "Your cards add up to #{card_total}"
end

#passing
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

#passing
def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

#passing
def initial_round
  sum = deal_card + deal_card 
  display_card_total(sum)
  sum  
end

#passing
def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

#passing
def get_user_input
  # code #get_user_input here
  gets.chomp

end


def hit?(card_total)
  prompt_user

  if get_user_input == "s"
    card_total
  else
    card_total += deal_card
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











    