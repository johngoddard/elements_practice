require '11chap'

describe "11.1 #sorted_arr_sort" do 
  it 'sorts sorted arrays' do 
    a = [1,3,5]
    b = [2,4,6]
    c = [0]

    expect(sorted_arr_sort(a,b,c)).to eq([0,1,2,3,4,5,6])
  end
end

describe '11.4 #kth_largest' do 
  it 'picks the kth largest element' do 
    expect(kth_largest([1,2,3,4,5,6,7], 3)).to eq(5)
  end

  it 'picks the largest element' do 
    expect(kth_largest([1,2,3], 1)).to eq(3)
  end
end
