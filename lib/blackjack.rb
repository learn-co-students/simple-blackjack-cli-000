def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  gets.chomp # code #get_user_input here
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit? (card_total)
  prompt_user
   if get_user_input == "s"
      card_total
   else sum2 = deal_card + card_total
    # display_card_total(card_total)
    sum2
  end  # code hit? here
end

def invalid_command
  # code invalid_command here
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
    
