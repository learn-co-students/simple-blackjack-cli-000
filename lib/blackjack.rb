def deal_card
  card = rand(1...11).round
  return card
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
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def get_user_input
  input = gets.chomp
  return input
end

def hit?(total)
  prompt_user
  response = get_user_input
  if response == "s"
    return total
  else
    return total += deal_card
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
  total
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    