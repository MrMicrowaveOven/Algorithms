require_relative '../lib/SearchRange.rb'

describe "search_range" do
  it "returns a basic range" do
    expect(search_range([5, 7, 7, 8, 8, 10], 8)).to eq([3,4])
  end
  it "works with arrays of index 1" do
    expect(search_range([1], 1)).to eq([0,0])
  end
  it "works with arrays ending with target" do
    expect(search_range([2,2], 2)).to eq([0,1])
  end
  it "works with single instances of target" do
    expect(search_range([1,2,3], 1)).to eq([0,0])
  end
end
