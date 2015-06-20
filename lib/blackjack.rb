def deal_card
    random_card = rand(11) + 1
    return random_card
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
  sum = 0
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  return sum
end

def end_game(total_at_end_game)
  puts "Sorry, you hit #{total_at_end_game}. Thanks for playing!"
end

def get_user_input
  gets.chomp do
    input = input.to_s
    puts "#{input}"
    end
end

def hit?(interger)
  prompt_user
  response = get_user_input
  if response == "h"
    interger += deal_card
  end
  return interger
end

def runner
  first_hand = 0
  welcome
  first_hand += initial_round
  take_a_hit = hit?(first_hand)
  until take_a_hit > 21
    hit(first_hand)
    take_a_hit = first_hand + hit?(first_hand)
    display_card_total(take_a_hit)
  end
  end_game(take_a_hit)
  return display_card_total(take_a_hit)
end



  #it "calls on the #welcome method,
  #then on the #initial_round method,
  #then calls #hit? and #display_card_total methods
  #-until- the card sum is greater than 21,
  #then calls on the #end_game method" do

   # expect(self).to receive(:deal_card).at_least(3).times.and_return(10)
   # expect(self).to receive(:get_user_input).and_return("h")

    #expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")
    #expect($stdout).to receive(:puts).with("Your cards add up to 20")
    #expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    #expect($stdout).to receive(:puts).with("Your cards add up to 30")
    #expect($stdout).to receive(:puts).with("Sorry, you hit 30. Thanks for playi$
    #runner
#  #end
#end








def display_card_total_experiment(number)
  random_card = rand(11)
  random_card_final = random_card + 1
  total_card_number = random_card_final + number
 puts "Your cards add up to #{total_card_number}"
end


def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

    