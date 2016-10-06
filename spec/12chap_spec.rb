require '12chap'

describe '12.1 first_occurence' do 
  it 'returns the index of the first instance of an elemnt in a sorted array' do 
    expect(first_occurence2([1,2,2,2,2,2,2,3], 2)).to eq(1)
  end

  it 'returns 0 when the first occurrence is the first element' do 
    expect(first_occurence2([1,1,2,2,2,2,2,3], 1)).to eq(0)
  end
end
