require_relative 'computer.rb' 
require_relative 'gameplay.rb' 
require_relative 'player.rb'

class Player
  include CreateCode
  def player_guess (computer_code, guess_store, reguess, win)
    12.times do
      guess_store = ['_', '_', '_', '_']
      reguess = {}
      puts "Guess code? 4 digits only"
      @human_guess = gets.chomp.split('')
      if @human_guess.length != 4
        puts "Please do a length of 4! Now you lose a guess!"
        next
      end
      @human_guess.map!{|digits| digits.to_i}
      @human_guess.each_with_index do |g_number, g_index|
        computer_code.each_with_index do |c_number, c_index|
          if reguess[c_number] != c_index
            if g_number == c_number && g_index == c_index
              guess_store[g_index] = 'X'
              reguess[c_number] = c_index
              break
            elsif g_number == c_number
              guess_store[g_index] = 'O'
              reguess[c_number] = c_index
              break
            end
          end
        end
      end
      puts "#{guess_store[0]} | #{guess_store[1]} | #{guess_store[2]} | #{guess_store[3]}"
      if guess_store[0] == 'X' && guess_store[1] == 'X' && guess_store[2] == 'X' && guess_store[3] == 'X'
        puts "Good Job, you guessed the code!"
        win[0] = true
        break
      else 
        puts "Keep Trying!"
      end
    end
  end
  
  def player_lose(code)
    puts "nice try! The code was #{code}. Rerun to try again!"
  end
end