require '7chap'

describe "#base_converter" do 
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

describe "#base_converter_2" do 
  it 'converts a binary number to hex' do 
    expect(base_converter_2('11111', 2, 16)).to eq('1f')
  end

  it 'converts a hex number to binary' do 
    expect(base_converter_2('1f', 16, 2)).to eq('11111')
  end

end
