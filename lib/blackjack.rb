def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end 

card_total = deal_card

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
   gets.chomp
end

def end_game(card_total)
  if card_total > 21
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
  end

def hit?(card_total_total)
  prompt_user
  input = get_user_input
  if input == "s"
    current_card_total
    elsif input == "h"
    deal_card + current_card_total
 else 
   invalid_command
   hit?(current_card_total)
end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
end
end_game(card_total)
end