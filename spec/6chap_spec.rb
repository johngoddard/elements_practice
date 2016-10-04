require '6chap.rb'

# 6.1 dutch flag

describe '6.1 #dutch_flag' do 
  it 'correctly outputs a dutch flag' do 
    expect(dutch_flag([6,3,3,4,2,1,2,2,3,8,7,6,5,3], 1)).to eq([2, 1, 2, 2, 3, 3, 3, 3, 6, 8, 7, 6, 5, 4])  
  end
end

# 6.6: buy and sell stock 1

describe '6.6 #stock_picker' do 
  it 'doesn\'t settle for a local max' do 
    expect(stock_picker([13,7,12,8, 13])).to eq([1,4])
  end

  it 'picks the right days 2' do 
    expect(stock_picker([13,7,12,5, 13])).to eq([3,4])
  end
end

# 6.11: random subset

describe '6.11 #random_subset' do 
  it 'generates random subsets' do 
    a = (0..10).to_a
    b = (0..10).to_a
    
    rand1 = random_subset(a, 6)
    rand2 = random_subset(b, 6)
  end
end
