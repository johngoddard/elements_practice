# 17.1: given a number, come up with the number of distinct (ordering doesn't matter) combinations of safeties (2), field goals (3), and touchdowns (7), that could add up to that number. Use dynamic programming

require 'byebug'

def score_possibilities(score, steps = [2,3,7])
  steps = steps.sort
  score_combos = []

  steps.each_with_index do |step, idx|
    step_combos = []
    (0..score).each do |sub_score|
      count = 0
      count += 1 if sub_score % step == 0

      if idx != 0
        test = sub_score
        while test > 0
          count += score_combos[idx - 1][test]
          test -= step
        end
      end
      step_combos << count
    end
    score_combos << step_combos
  end

  score_combos[steps.length - 1][score]
end

