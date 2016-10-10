# 17.1: given a number, come up with the number of distinct (ordering doesn't matter) combinations of safeties (2), field goals (3), and touchdowns (7), that could add up to that number. Use dynamic programming

require 'byebug'

def score_possibilities(score)
  sub_score_combos = score_table(score)
  count = 0 
  count += 1 if score % 7 == 0

  test_score = score 

  while test_score > 0
    count += sub_score_combos[1][test_score]
    test_score -= 7
  end
  
  count
end

def score_table(score)
  score_combos = [[],[]]
  (0..score).each do |idx|
    score_combos[0] << (idx % 2 == 0 ? 1 : 0)
  end
  

  (0..score).each do |j|
    count = 0
    count += 1 if j % 3 == 0
    
    test_score = j

    while test_score > 0
      count += score_combos[0][test_score]
      test_score -= 3
    end

    score_combos[1] << count 
  end 

  score_combos
end


