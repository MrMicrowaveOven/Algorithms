require_relative '../lib/TwoSum'

describe 'two_sum' do
  it "returns the indices that add to the target" do
    expect(two_sum([1,3,4,7,2], 11)).to eq([2,3])
  end
  it "doesn't duplicate elements" do
    expect(two_sum([3,2,4], 6)).to eq([1,2])
  end
end
