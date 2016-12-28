require_relative '../lib/FindDuplicates.rb'

describe 'find_duplicates' do
  it "works with basic array" do
    expect(find_duplicates([4,3,2,7,8,2,3,1])).to eq([2,3])
  end
end
