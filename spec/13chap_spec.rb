require '13chap'

describe '13.1 palindrome_perm?' do 
  it 'returns true for a string that could be a palindrome' do 
    expect(palindrome_perm?('aabbcc')).to eq(true)
    expect(palindrome_perm?('aabbccecc')).to eq(true)
  end


  it 'returns false for a non-palindrome' do 
    expect(palindrome_perm?('abc')).to eq(false)
  end
end

describe '13.2 is_constructable?' do 
  it 'returns true for something constructable' do 
    expect(is_constructable?('the cat', 'the cat in the hat')).to eq(true)
  end
  it 'returns false for something that is not constructable' do 
    expect(is_constructable?('the cat in the hat', 'the cat')).to eq(false)
  end
end

describe '13.6 closest_repeat' do 
  it 'returns the word and closest indices' do 
    str = 'all work and no play makes for no work no fun and no results'
    expect(closest_repeat(str)).to eq(['no', [7,9]])
  end
end
