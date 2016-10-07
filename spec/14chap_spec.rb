require '14chap'

describe '14.1 #intersection' do 
  it 'returns the intersection of 2 sorted arrays' do 
    a = [2,3,3,5,5,6,7,7,8,12]
    b = [5,5,6,8,8,9,10,10]
    expect(intersection(a,b)).to eq([5,6,8])
  end
end
