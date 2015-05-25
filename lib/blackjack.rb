def deal_card
  # code #deal_card here
  card= rand(1...11)
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
  cardone=deal_card()
  cardtwo=deal_card()
  sum= cardone+cardtwo
  display_card_total(sum)
  return sum
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def get_user_input
  
  input=gets.chomp()
  return input
  

end

def hit?(total)

  prompt_user()
  input= get_user_input()

  if input=="h"
    return total+ deal_card()
  else input=="s"
    return total
  end

  if input=="h"
    prompt user()
    input=get_user_input()
    if input=="h"
      return total+ dealcard()
      else input=="s"
      return total
    end
  end
end




def invalid_command
  puts "This is an invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total=initial_round

  until (total>21)
    total=hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    