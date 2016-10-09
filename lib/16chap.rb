def towers_solver(num_rings, pegs, from_peg, to_peg, use_peg)
  return if num_rings == 0
  towers_solver(num_rings - 1, pegs, from_peg, use_peg, to_peg)
  pegs[to_peg] << pegs[from_peg].pop unless pegs[from_peg].empty?
  towers_solver(num_rings - 1, pegs, use_peg, to_peg, from_peg)
end

