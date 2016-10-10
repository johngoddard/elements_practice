# 16.1: recursively solve towers of Hanoi

def towers_solver(num_rings, pegs, from_peg, to_peg, use_peg)
  return if num_rings == 0
  towers_solver(num_rings - 1, pegs, from_peg, use_peg, to_peg)
  pegs[to_peg] << pegs[from_peg].pop unless pegs[from_peg].empty?
  towers_solver(num_rings - 1, pegs, use_peg, to_peg, from_peg)
end

# 16.2: recursively come up with all legal ways to place N queens on an N by N board
def solve_n_queens(n, row = 0, curr_board = [], result = [])
  result << curr_board if row == n
  
  (0...n).each do |col|
    if(row == 0 || legal_placement?(row, col, curr_board))
      board = curr_board + [[row, col]]
      solve_n_queens(n, row + 1, board, result)
    end
  end

  result
end

def legal_placement?(row, col, curr_board)
  curr_board.each do |queen|
    return false if queen[1] == col
    
    slope = (row - queen[0]) / (col - queen[1]).to_f
    return false if slope == 1 || slope == -1
  end

  true
end



