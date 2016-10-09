require '16chap'

describe '16.1: #towers_solver' do 
  it 'solves towers of hanoi for 3 towers' do 
    pegs = [[3,2,1], [], []]
    towers_solver(3, pegs, 0, 2, 1)
    expect(pegs).to eq([[],[],[3,2,1]])
  end
  it 'solves towers of hanoi for 5 towers' do 
    pegs = [[5,4,3,2,1], [], []]
    towers_solver(5, pegs, 0, 2, 1)
    expect(pegs).to eq([[],[],[5,4,3,2,1]])
  end
end
