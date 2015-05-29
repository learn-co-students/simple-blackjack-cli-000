def deal_card
  # code #deal_card here
  rand(11) + 1
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
  card
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
  display_card_total(card1 + card2)
end

def end_game(bust_total)
  # code #end_game here
  puts "Sorry, you hit #{bust_total}. Thanks for playing!"
end

def get_user_input
  # code #get_user_input here
  $stdin.gets.chomp
end

def hit?(total)
  # code hit? here
  prompt_user
  command = get_user_input
  if(command == "h")
    total += deal_card
  end
  total
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
  total = initial_round
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    