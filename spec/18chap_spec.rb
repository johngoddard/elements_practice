require '18chap.rb'

describe '18.1: assign tasks' do 
  it 'assigns tasks in an optimal way' do 
    expect(assign_tasks([5,2,1,6,4,4])).to eq([[1,6], [2,5], [4,4]])
  end
end

describe '18.4 three_sum' do 
  it 'returns true for an array with 3 nums that add up to a target' do 
    expect(three_sum([1,2,3], 6)).to eq(true)
  end 

  it 'will use repeat numbers' do 
    expect(three_sum([5], 15)).to eq(true)
  end
  
  it 'works for no repeats' do 
    expect(three_sum([11, 2, 5, 7, 3], 12)).to eq(true)
  end

  it 'returns false when there is no 3 sum' do 
    expect(three_sum([11, 2, 5, 7, 3], 22)).to eq(false)
  end
end
