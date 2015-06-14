def deal_card
 1 + rand(11)
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
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  sum
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def get_user_input
  gets.chomp
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card

  elsif input == "s"
   else
    invalid_command(total)
  end
  total
end

def invalid_command(total)
  puts "Invald entry"
  hit?(total)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 playertotal = 0
 welcome
 playertotal += initial_round

 until playertotal > 21
   playertotal = hit?(playertotal)
   display_card_total(playertotal)
 end
 end_game(playertotal)

end
    