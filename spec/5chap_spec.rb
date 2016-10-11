require '5chap'

describe '5.8: #reversed_int' do 
  it 'reverses a positive int' do
    expect(reversed_int(1234)).to eq(4321)
  end
  it 'reverses a negative int' do
    expect(reversed_int(-1234)).to eq(-4321)
  end
end
