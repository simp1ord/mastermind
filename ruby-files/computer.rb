require_relative 'boardisplay.rb' 
require_relative 'computer.rb' 
require_relative 'gameplay.rb' 
require_relative 'player.rb'

class Computer < GameDisplay
  include Gameplay
end