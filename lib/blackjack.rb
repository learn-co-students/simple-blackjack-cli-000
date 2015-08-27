def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  initial = deal_card + deal_card

  display_card_total(initial)

  initial
end

def hit?(unknown)
  prompt_user
  user_answer = get_user_input

  if user_answer == 'h'
    unknown = unknown + deal_card
  end
  unknown
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  running_card_value = initial_round


until running_card_value > 21


new_running_card_value = hit?(running_card_value)

display_card_total(new_running_card_value)
running_card_value = new_running_card_value

end
end_game(running_card_value)

end

