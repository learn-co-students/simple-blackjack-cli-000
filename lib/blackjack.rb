# code #deal_card here
def deal_card 
  rand(1..11)
end

deal_card


# code #display_card_total here
def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end


# code #welcome here
def welcome
  puts "Welcome to the Blackjack Table" 
end


# code #prompt_user here
def prompt_user
  puts "Type 'h' to hit or 's' to stay"  
end


# code #initial_round here
def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end
  

# code #end_game here
def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end


# code #get_user_input here
def get_user_input
  input = gets.chomp
end


# code hit? here
def hit?(sum)
  prompt_user 

  if get_user_input == "s"
    sum
  else
    sum += deal_card
  end
end


# code invalid_command here
def invalid_command

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# code runner here
def runner
  welcome
  sum = initial_round
  until sum > 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    