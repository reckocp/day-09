require_relative '../lib/gameboard'
# require_relative '../lib/player'

class Tictactoe
  attr_accessor :board_values

  def prep_game
    @board = Board.new
    puts "Hello! It's TIC TAC TOE TIME!"
    puts "ARE"
    puts "YOU"
    puts "READY?!???"
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
      how_to_tie
        if @unavail_boxes == 9
          break
        end
      @updated_board = @board.current_display
      puts @updated_board
      how_to_win
        if @x_wins == 1
          break
        elsif @o_wins == 1
          break
        elsif @unavail_boxes == 9
          puts "It's a tie. Try again."
          break
        end
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

  def how_to_win
    @x_wins = 0
    @o_wins = 0
    if @board.structure.values_at("1", "2", "3") == ["X", "X", "X"]
      @x_wins += 1
      puts "#{@player_name}, you won! Congratulations!"
    elsif @board.structure.values_at("4", "5", "6") == ["X", "X", "X"]
      @x_wins += 1
      puts "#{@player_name}, you won! Congratulations!"
    elsif @board.structure.values_at("7", "8", "9") == ["X", "X", "X"]
      @x_wins += 1
      puts "#{@player_name}, you won! Congratulations!"
    elsif @board.structure.values_at("1", "4", "7") == ["X", "X", "X"]
      @x_wins += 1
      puts "#{@player_name}, you won! Congratulations!"
    elsif @board.structure.values_at("2", "5", "8") == ["X", "X", "X"]
      @x_wins += 1
      puts "#{@player_name}, you won! Congratulations!"
    elsif @board.structure.values_at("3", "6", "9") == ["X", "X", "X"]
      @x_wins += 1
      puts "#{@player_name}, you won! Congratulations!"
    elsif @board.structure.values_at("1", "5", "9") == ["X", "X", "X"]
      @x_wins += 1
      puts "#{@player_name}, you won! Congratulations!"
    elsif @board.structure.values_at("3", "5", "7") == ["X", "X", "X"]
      @x_wins += 1
      puts "#{@player_name}, you won! Congratulations!"
    elsif @board.structure.values_at("1", "2", "3") == ["O", "O", "O"]
      @o_wins += 1
      puts "Sorry, #{@player_name}. The computer got you this time."
    elsif @board.structure.values_at("4", "5", "6") == ["O", "O", "O"]
      @o_wins += 1
      puts "Sorry, #{@player_name}. The computer got you this time."
    elsif @board.structure.values_at("7", "8", "9") == ["O", "O", "O"]
      @o_wins += 1
      puts "Sorry, #{@player_name}. The computer got you this time."
    elsif @board.structure.values_at("1", "4", "7") == ["O", "O", "O"]
      @o_wins += 1
      puts "Sorry, #{@player_name}. The computer got you this time."
    elsif @board.structure.values_at("2", "5", "8") == ["O", "O", "O"]
      @o_wins += 1
      puts "Sorry, #{@player_name}. The computer got you this time."
    elsif @board.structure.values_at("3", "6", "9") == ["O", "O", "O"]
      @o_wins += 1
      puts "Sorry, #{@player_name}. The computer got you this time."
    elsif @board.structure.values_at("1", "5", "9") == ["O", "O", "O"]
      @o_wins += 1
      puts "Sorry, #{@player_name}. The computer got you this time."
    elsif @board.structure.values_at("3", "5", "7") == ["O", "O", "O"]
      @o_wins += 1
      puts "Sorry, #{@player_name}. The computer got you this time."
    else
      puts "No winner yet."
    end
  end

  def how_to_tie
    @unavail_boxes = 0
    if @board.structure.values_at("1") == "X" || @board.structure.values_at("1") == "O"
      @unavail_boxes += 1
    elsif @board.structure.values_at("2") == "X" || @board.structure.values_at("2") == "O"
      @unavail_boxes += 1
    elsif @board.structure.values_at("3") == "X" || @board.structure.values_at("3") == "O"
      @unavail_boxes += 1
    elsif @board.structure.values_at("4") == "X" || @board.structure.values_at("4") == "O"
      @unavail_boxes += 1
    elsif @board.structure.values_at("5") == "X" || @board.structure.values_at("5") == "O"
      @unavail_boxes += 1
    elsif @board.structure.values_at("6") == "X" || @board.structure.values_at("6") == "O"
      @unavail_boxes += 1
    elsif @board.structure.values_at("7") == "X" || @board.structure.values_at("7") == "O"
      @unavail_boxes += 1
    elsif @board.structure.values_at("8") == "X" || @board.structure.values_at("8") == "O"
      @unavail_boxes += 1
    elsif @board.structure.values_at("9") == "X" || @board.structure.values_at("9") == "O"
      @unavail_boxes += 1
    else
      puts "No tie either. Let's keep going."
    end
  end

end

Tictactoe.new.prep_game
