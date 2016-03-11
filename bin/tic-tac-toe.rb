require_relative '../lib/gameboard'
# require_relative '../lib/player'

class Tictactoe
  attr_accessor :board_values

  def prep_game
    @board = Board.new
    puts "It's TIC TAC TOE TIME!"
    puts "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
    puts "Let me get your information before we get started."
    puts "Please enter your name below."
    print">> "
    @player_name = gets.chomp
    puts "Welcome #{@player_name}. You will be represented by an X on the board today."
    game_time
  end

  def game_time
    puts @board.initial_display
    loop do
      puts "#{@player_name}, choose the number of the square that you want to place your X in."
      player_move
      puts "You've chosen square #{@player_move}. Please wait while the computer takes a turn."
      sleep 1
      computer_move
      @updated_board = @board.current_display
      puts @updated_board
    end
  end

  def player_move
    @player_move = gets.chomp
    @board.new_move(@player_move, "X")
  end

  def computer_move
    comp_choice = @board.choice
    if @board.structure[comp_choice] == " "
      @board.new_move(comp_choice, "O")
    else
      computer_move
    end
  end

end

Tictactoe.new.prep_game
