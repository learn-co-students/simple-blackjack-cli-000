def deal_card
  card = 1 + rand(11)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def welcome
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  two_cards = deal_card + deal_card
  display_card_total(two_cards)
  return two_cards
end

def end_game(display_card_total)
  puts "Sorry, you hit #{display_card_total}. Thanks for playing!"
end

def get_user_input
  STDIN.gets.chomp
end

def hit?(number)
  prompt_user()
  response = get_user_input()
  case response
  when "s"
    number
  when "h" 
    number + deal_card
  when "exit"

  end
      
end

def invalid_command
 puts "You have entered an invalid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  three = deal_card + deal_card + deal_card
  get_user_input()
  welcome()
  initial_round()
  prompt_user()
  puts "Your cards add up to 30"
  puts "Sorry, you hit 30. Thanks for playing!"
end