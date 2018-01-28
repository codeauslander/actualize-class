def winner(board,players_names,consecutives)
  players_names.each do |player_name|
    if is_winner(board,player_name,consecutives)
      return player_name
    end
  end
end

def is_winner(board,player_name,consecutives)
  if win_horizontal(board,player_name,consecutives) || win_vertical(board,player_name,consecutives) || win_diagonal(board,player_name,consecutives)
    return true
  end
  return false
end

def win_horizontal(board,player_name,consecutives)
  board.each do |row|
    count = 0
    row.times do |element|
      if row[element] == player_name
        count += 1
      else
        count = 0
      end
      if count == consecutives
        return true
      end 
    end
  end
  return false
end

def win_vertical(board,player_name,consecutives)
  column_size = board[0].length
  row_size = board.length
  column_size.times do |column|
    count = 0
    row_size.times do |row|
      if board[row][column] == player_name
        count += 1
      else
        count = 0
      end 
      if count == consecutives
        return true
      end 
    end
  end
  return false
end

def win_diagonal(board,player_name,consecutives)
  row_size = board.length
  column_size = board[0].length

  index_row = 0
  index_column = 0 
  diagonals = (row_size + column_size) - 1
  sum = 0
  count = 0

  diagonals.times do 

    row_size.times do
      column_size.times do

        

        element = board[index_row][index_column]
        if is_diagonal(index_row,index_column,sum) && 
           (player_name == element)

           puts "[#{index_row}, #{index_column}] element #{element} sum #{sum}"  
           count += 1       

        end

        index_column += 1
      end
      index_column = 0
      index_row += 1
    end
    puts count
    if count == consecutives
      puts "winner"
    end 
    count = 0
    index_row = 0
    sum += 1
  end
end



def is_diagonal(row,column,sum)

  diagonal = false

  
  # puts "[#{row},#{column}] "
  if (row + column) == sum &&
      row != column
    # puts "#{row} + #{column} == #{sum}"
    diagonal = true
  elsif row == column
    # puts "#{row} == #{column} diagonal"
    diagonal = true
  end 
  
  return diagonal

end 

board = [
          [1,0,0],
          [1,1,0],
          [0,1,1],
        ]

player_name = 1

consecutives = 2

win_diagonal(board,player_name,consecutives)