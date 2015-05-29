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
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def get_user_input
  user_input = gets
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
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end

    