class Board

  def initialize
    @board_values = {"1" => " ", "2" => " ", "3" => " ",
                    "4" => " ", "5" => " ", "6" => " ",
                    "7" => " ", "8" => " ", "9" => " "}
  end

  def structure
    @board_values
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

  def new_move(location, marker)
    @board_values[location] = marker
  end

  def current_display
    puts " #{get "1"} | #{get "2"} | #{get "3"} "
    puts "---+---+---"
    puts " #{get "4"} | #{get "5"} | #{get "6"} "
    puts "---+---+---"
    puts " #{get "7"} | #{get "8"} | #{get "9"} "
  end

  def get(key)
    if @board_values[key] == " "
      return key
    else
      @board_values[key]
    end
  end

  def choice
    random_number = (rand(0..8).to_s)
  end


  # def combine_boards
  #

end
