require '7chap'

describe "7.2 #base_converter" do 
  it "converts a dec10 number to binary" do 
    expect(base10_converter('5', 2)).to eq('101')
  end

  it "converts a dec10 number to hex" do 
    expect(base10_converter('31', 16)).to eq('1f')
  end

  it "handles 0" do 
    expect(base10_converter('0', 9)).to eq('0')
  end
end

describe "7.2 #base_converter_2" do 
  it 'converts a binary number to hex' do 
    expect(base_converter_2('11111', 2, 16)).to eq('1f')
  end

  it 'converts a hex number to binary' do 
    expect(base_converter_2('1f', 16, 2)).to eq('11111')
  end

end

describe '7.4 #replace_and_remove' do
  it 'replaces and removes accurately' do 
    arr = %w(a c d b b c a c) 
    replace_and_remove(arr, 7)
    expect(arr.take(8)).to eq(%w(d d c d c d d c))
  end
end

describe '7.5 #is_palindrome?' do 
  it 'returns true for a palindrome' do 
    expect(is_palindrome?('A man, a plan, a canal, Panama')).to eq(true)
  end
  it 'returns false for a non-palindrome' do 
    expect(is_palindrome?('Ray a Ray')).to eq(false)
  end
end

describe '7.6. #reverse_words' do 
  it 'reverses the words in a string' do 
    expect(reverse_words_manual('Bob likes Alice')).to eq('Alice likes Bob')
  end
end
