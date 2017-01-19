def welcome
  sleep(0.5)
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def prompt_user
  sleep(0.5)
  puts "Type 'h' to hit or 's' to stay"
end

def display_card_total(total)
  sleep(0.5)
  puts "Your cards add up to #{total}"
  return total
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  display_card_total(deal_card + deal_card)
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "s"
    return total
  elsif input == "h"
    return deal_card + total
  else
    invalid_command
    hit?(total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  sum_dealt = initial_round
  until sum_dealt > 21
    sum_dealt = hit?(sum_dealt)
    display_card_total(sum_dealt)
  end
  end_game(sum_dealt)
end

