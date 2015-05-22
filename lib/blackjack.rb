def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(cards)
  # code #display_card_total here
  puts "Your cards add up to #{cards}"
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
  cards = deal_card + deal_card
  display_card_total(cards)
  cards
end

def end_game(cards)
  # code #end_game here
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def get_user_input
  # code #get_user_input here
  $stdin.gets.chomp
end

def hit?(cards)
  # code hit? here
  prompt_user
  input = get_user_input
  if(input == 'h')
    cards += deal_card
  elsif(input == 's')
    cards
  else
    invalid_command(cards)
  end
end

def invalid_command(cards)
  # code invalid_command here
  puts "Invalid command, please try again"
  hit?(cards)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards = initial_round
  until cards >= 21 do
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end

    