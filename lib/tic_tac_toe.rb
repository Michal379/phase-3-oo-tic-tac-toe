class TicTacToe

         #initializes an empty g.board
    def initialize
      @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end

        # all possible winning combinations
    WIN_COMBINATIONS = [
      [0, 1, 2], #top row
      [3, 4, 5], #middle row
      [6, 7, 8], #bottom row
      [0, 3, 6], #left clm
      [1, 4, 7], #middle clm
      [2, 5, 8], #right clm
      [0, 4, 8], #top_left - bottom_right
      [6, 4, 2]  #bottom_left - top_right
    ]

        #  shows the current state of the g.board
    def display_board
      print " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      print "-----------"   #shows boundaries btn rows
      print " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      print "-----------"
      print " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
  
        # represents user position on the g.board
    def input_to_index(str)
      str.to_i - 1
    end
  
       # show's player's move at a certain index
    def move(index, player = "X")
      @board[index] = player
    end

       # checks if an index has been occupied
    def position_taken?(index)
     @board[index] != " "
    end  
    
        #checks if a move made is valid
    def valid_move?(index)
      @board[index] == " "
    end

    def turn_count
      9 - @board.count(" ")
    end

       def current_player
        self.turn_count.even? ? "X" : "O"
       end

       def turn
       end
  end
  