require 'other'

describe '#kpm_string_search' do 
  it "finds the index of the substring" do 
    expect(kpm_string_search('abxabcabcaby', 'abcaby')).to eq(6)
  end

  it 'retuns nil if the string is not found' do 
    expect(kpm_string_search('ababacb', 'abc')).to eq(nil)
  end
end

describe '#process_prefix' do 
  it 'correctly processes a prefix' do 
   expect(process_prefix('abcaby')).to eq([0,0,0,1,2,0])
  end
  it 'correctly processes a complicated prefix' do 
   expect(process_prefix('aabaabaaa')).to eq([0,1,0,1,2,3,4,5,2])
  end
end
