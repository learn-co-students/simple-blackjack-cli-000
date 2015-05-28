def deal_card
  # code #deal_card here
  rand(11)+1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"

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
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def get_user_input
  $stdin.gets.chomp
end

def hit?(card_total)
  # code hit? here
  prompt_user
  if get_user_input == 's'
    card_total 
  else
    card_total += deal_card
  end
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
  count = initial_round
  while count < 21
    count = hit?(count)
    display_card_total(count)
  end
  end_game(count)
end


    
