CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

def display_winning_choice(winning_choice)
  if winning_choice == 'p'
    puts "Paper covers Rock!"
  elsif winning_choice == 'r'
    puts "Rock smashes Scissors!"
  else
    puts "Scissors cuts Paper!"
  end
end

puts "Welcome to Rock, Paper, Scissors!"

loop do
  begin
    puts "Choose one: 'r' for rock, 'p' for paper, and 's' for scissors"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    puts "It's a tie!"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
    display_winning_choice(player_choice)
    puts "You won!"
  else
    display_winning_choice(computer_choice)
    puts "You lose!"
  end

  puts "Play again? (y/n)"
  break unless gets.chomp.downcase == 'y'

end

puts "Good bye"