require '18chap.rb'

describe '18.1: assign tasks' do 
  it 'assigns tasks in an optimal way' do 
    expect(assign_tasks([5,2,1,6,4,4])).to eq([[1,6], [2,5], [4,4]])
  end
end
