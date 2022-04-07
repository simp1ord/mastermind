

class GameDisplay
  def game_begin 
    puts "Welcome to Mastermind, the 1 on 1 guessing game to see if you can guess the code break"
    puts "1. There are 12 rounds to guess"
    puts "2. You have to guess 4 numbers, and if you guess more than so, you will waste a turn"
    puts "3. Every guess responds in X's (number is right in both value and place), and O's (right number, wrong place)"
  end
  def game_choice(g_choice)
    puts "Do you want to make the code, or guess it? G for guess, C for create"
    @choice = gets.chomp.downcase
    g_choice.pop()
    g_choice.push(@choice)
  end
end