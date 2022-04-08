require_relative 'boardisplay.rb' 
require_relative 'computer.rb' 
require_relative 'gameplay.rb' 
require_relative 'player.rb' 

class Game < GameDisplay 
 attr_accessor :guess,
               :computer_code,
               :player_code,
               :reguess_prevent,
               :win_or_not,
               :game_choice,
               :computer_intelligence
  def initialize
    @@guess = []
    @@computer_code = []
    @@player_code = []
    @@reguess_prevent = {}
    @@win_or_not = []
    @@game_choice = []
  end

  def game_play (game, computer, player)
    game.game_begin
    game.game_choice(@@game_choice)
    if @@game_choice[0] == 'g'
      computer.code_create(@@computer_code)
      player.player_guess(@@computer_code, @@guess, @@reguess_prevent, @@win_or_not)
      if @@win_or_not[0] != true
        player.player_lose(@@computer_code)
      end
    elsif @@game_choice[0] == 'c'
      player.human_create(@@player_code)
      12.times do
        computer.computer_guess(@@player_code, @@computer_code, @@guess, @@reguess_prevent, @@win_or_not)
        if @@win_or_not[0] == true
          computer.xcomputer_win
        end
      end
    else
      puts "G/g or C/c input please, reload code!"
    end

  end
end

new_game = GameDisplay.new
computer = Computer.new
player = Player.new
game = Game.new

game.game_play(new_game, computer, player)
