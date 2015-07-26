def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  Random.new.rand(10) + 1
end

def display_card_total num
  # code #display_card_total here
  puts "Your cards add up to #{num}"
  num
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game num
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  display_card_total deal_card + deal_card
end

def hit? num
  prompt_user
  input = get_user_input
  num = num + deal_card if input == 'h'
  num if input == 's'
  num

  # code hit? here

end

def invalid_command
  # code invalid_command here


end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  int = initial_round
  num = hit? int
  sum = display_card_total num
  until sum > 21
     sum = display_card_total hit? sum
  end
  end_game sum

  # code runner here
end
    
