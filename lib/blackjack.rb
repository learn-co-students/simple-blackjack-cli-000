def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...11)
end

def display_card_total(card_total)
  # code #display_card_total here
  
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
   total = deal_card + deal_card
   display_card_total(total)
   total
end

def hit?(num)
  additional_card = 0
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    additional_card = deal_card
  end
  num + additional_card
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_total = initial_round
  total = hit?(initial_total)
  display_card_total(total)
  if total > 21 
    end_game(total)
  end
end
    
