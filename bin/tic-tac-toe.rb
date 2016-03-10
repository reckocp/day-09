require_relative '../lib/gameboard'

class Tictactoe
  def play
    puts "Welcome to Tic Tac Toe! Today, you will be battling a computer to see who is the true Tic Tac Toe champion! First I need to collect your name. Please enter it in the space below."
    print ">> "
    @human_player = gets.chomp.upcase
    puts "Welcome, #{@human_player}! I hope you're ready to begin! Would you like to go first? Type (Y) or (N)."
    @players_choice = gets.chomp.upcase
    case @players_choice
      when "Y"
        @human_player_piece = "X"
        @comp_player_piece = "Y"
        puts "#{@human_player}, you will be represented by an X on the board today."
      when "N"
        @human_player_piece = "Y"
        @comp_player_piece = "X"
        puts "#{@human_player}, you will be represented by a Y on the board today."
      else
        puts "That's not (Y) or (N). Try again."
        players
      end
    puts "Let's take a look at your game board."
    puts initial_display
    "You can place your piece by selecting one of the numbers on the grid above. Ready or not, here we go!"
  end
end

test = Tictactoe.new
puts test
