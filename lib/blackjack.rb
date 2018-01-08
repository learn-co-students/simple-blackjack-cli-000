def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  print display_card_total(sum)
  return sum
end

def hit?(total)
  prompt_user
  input = get_user_input
  if (input != 's')
    total+=deal_card
  elsif (input != 's' && input != 'h')
  invalid_command
  prompt_user
  end
  return total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
