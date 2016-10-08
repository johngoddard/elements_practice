require '14chap'

describe '14.1 #intersection' do 
  it 'returns the intersection of 2 sorted arrays' do 
    a = [2,3,3,5,5,6,7,7,8,12]
    b = [5,5,6,8,8,9,10,10]
    expect(intersection(a,b)).to eq([5,6,8])
  end
end

describe '14.2 #merge_sorted' do 
  it 'merges 2 sorted arrays' do 
    a = [1,3,5,nil,nil,nil]
    b = [2,4,6]
    expect(merge_sorted(a, b)).to eq([1,2,3,4,5,6])
  end
end
