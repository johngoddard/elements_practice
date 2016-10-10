require '17chap'

describe '17.1: #score_possibilities' do 
  it 'correctly comes up with the number of score possibilities for 12 points' do 
    expect(score_possibilities(12, [2,3,7])).to eq(4)
  end
  
   
  it 'works for 21' do 
    expect(score_possibilities(21, [2,3,7])).to eq(9)
  end


  it 'works for 24' do 
    expect(score_possibilities(24, [2,3,7])).to eq(11)
  end
    
end
