def deal_card
 rand(1..11) # code #deal_card here
end

def display_card_total(total)
 card_total = deal_card
 puts "Your cards add up to #{total}" # code #display_card_total here
end

def welcome
  puts "Welcome to the Blackjack Table" # code #welcome here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"  # code #prompt_user here
end

def initial_round
 sum = deal_card + deal_card
 display_card_total(sum) 
 sum # code #initial_round here
end

def end_game(display_card_total)
  puts "Sorry, you hit #{display_card_total}. Thanks for playing!"# code #end_game here
end

def get_user_input
  input = STDIN.gets.chomp
  return gets.chomp  # code #get_user_input here
end

def hit?(sum)
  prompt_user

  if get_user_input == "s"
    sum
  else
    sum += deal_card
  end
end



def invalid_command
  puts "This is an invalid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
 sum = initial_round 
 until sum > 21 do
 sum = hit?(sum)
 display_card_total(sum)
 end
 end_game(sum) # code runner here
end
    