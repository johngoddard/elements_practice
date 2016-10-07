require '12chap'

describe '12.1 first_occurence' do 
  it 'returns the index of the first instance of an elemnt in a sorted array' do 
    expect(first_occurence2([1,2,2,2,2,2,2,3], 2)).to eq(1)
  end

  it 'returns 0 when the first occurrence is the first element' do 
    expect(first_occurence2([1,1,2,2,2,2,2,3], 1)).to eq(0)
  end
end

describe '12.4 closest_root' do 
  it 'returns the closest_root for a perfect square' do 
    expect(closest_root(16)).to eq(4)
  end
  it 'works for a small perfect root' do 
    expect(closest_root(4)).to eq(2)
  end
  it 'works for a non perfect square' do 
    expect(closest_root(17)).to eq(4)
  end
end

describe '12.8 #kth_largest_in_place' do 
  it 'picks the kth largest element' do 
     a = [1,2,3,4,5,6,7]
     20.times do |i|
       b = a.shuffle
       expect(kth_largest_in_place(b, 3)).to eq(5)
     end
  end

  it 'picks the largest element' do 
     a = [1,2,3]
     20.times do 
       b = a.shuffle
       expect(kth_largest_in_place(b, 1)).to eq(3)
     end
  end
end
