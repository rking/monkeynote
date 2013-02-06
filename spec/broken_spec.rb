require './spec/spec_helper'

describe 'Hi' do
  it 'should work' do
    3.should == 3
    require'pry';binding.pry 
  end
end
