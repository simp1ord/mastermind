require_relative 'computer.rb' 
require_relative 'gameplay.rb' 
require_relative 'player.rb'

class Computer 
  include CreateCode

  def computer_guess(player_code, computer_guess, guess_store, reguess, win)
    guess_store = ['_', '_', '_', '_']
    reguess = {}
    computer_guess = []
    4.times do
      @random_num = rand(7)
      computer_guess.push(@random_num)
    end
    computer_guess.each_with_index do |number, index|
      player_code.each_with_index do |p_number, p_index|
        if reguess[p_number] != p_index
          if number == p_number && index == p_index
            guess_store[index] = 'X' 
            reguess[p_number] = p_index
            c_i[index] = number
            break
          elsif number == p_number
            guess_store[index] = 'O'
            reguess[p_number] = p_index
            break
          end
        end
      end
    end
    puts "#{computer_guess}"
    puts "#{guess_store[0]} | #{guess_store[1]} | #{guess_store[2]} | #{guess_store[3]}"
    if guess_store[0] == 'X' && guess_store[1] == 'X' && guess_store[2] == 'X' && guess_store[3] == 'X'
      puts "Good Job, you guessed the code!"
      win[0] = true
    end
  end
  def computer_win
    puts "The computer guessed your code, well played PC!"
  end
end
