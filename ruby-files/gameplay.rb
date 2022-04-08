
module CreateCode
  def code_create (computer_code)
    4.times do
      @random_num = rand(7)
      computer_code.push(@random_num)
    end
  end
  
  def human_create (player_code)
    loop do
      puts "4 digits in order please. Any non-number equate to 0!"
      @human_num  = gets.chomp.to_i
      if @human_num >= 0 && @human_num < 10
        player_code.push(@human_num)
      end
      if player_code.length == 4 
        break
      end
    end
    @display_code = player_code.join()
    puts "Your code is #{@display_code}! Don't forget!"
  end
end