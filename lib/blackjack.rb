def deal_card
  # code #deal_card here
  num = rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
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
  sum
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
    if input == 'h'
      total += deal_card
    elsif input == 's'
    else
      invalid_command(total)
    end
  total
end

def invalid_command
  # code invalid_command here
  puts "That is an invalid command."
  hit?(total)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  game_total = 0
  welcome
  game_total += initial_round
    until game_total > 21
      game_total = hit?(game_total)
      display_card_total(game_total)
    end
    end_game(game_total)
end
    