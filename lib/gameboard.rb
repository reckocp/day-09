class Board

  def initialize
    @board_values = {"1" => " ", "2" => " ", "3" => " ",
                    "4" => " ", "5" => " ", "6" => " ",
                    "7" => " ", "8" => " ", "9" => " "}
  end

  def initial_display
    puts ""
    puts " 1 | 2 | 3 "
    puts "---+---+---"
    puts " 4 | 5 | 6 "
    puts "---+---+---"
    puts " 7 | 8 | 9 "
    puts ""
  end

  def current_display
    puts " #{@board_values["1"]} | #{@board_values["2"]} | #{@board_values["3"]} "
    puts "---+---+---"
    puts " #{@board_values["4"]} | #{@board_values["5"]} | #{@board_values["6"]} "
    puts "---+---+---"
    puts " #{@board_values["7"]} | #{@board_values["8"]} | #{@board_values["9"]} "
  end

  def moves_that_win
    [[1, 2, 3], [4, 5, 6], [7, 8, 9],
    [1, 4, 7], [2, 5, 8], [3, 6, 9],
    [1, 5, 9], [3, 5, 7]]
  end

  board.moves_that_win.each do |winner|
   if board.board[winner[0] - 1] == "X" &&
      board.board(winner[1] - 1) == "X" &&
      board.board[winner[2] - 1] == "X"
      puts "Winner!"
end
