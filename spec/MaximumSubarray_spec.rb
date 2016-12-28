require_relative '../lib/MaximumSubarray'
describe "max_sub_array" do
  it "returns the largest sum" do
    expect(max_sub_array([1,0,-1,2,4,-3])).to eq(6)
  end
  it "returns 0 if empty array" do
    expect(max_sub_array([])).to eq(0)
  end
  it "returns element if length of array is 1" do
    expect(max_sub_array([6])).to eq(6)
  end
  it "works with a 2 element array" do
    expect(max_sub_array([-2,1])).to eq(1)
  end
  it "works with all negative elements" do
    expect(max_sub_array([-2,-1])).to eq(-1)
  end
  it "works with all negative elements with a 0" do
    expect(max_sub_array([-3,-2,0,-1])).to eq(0)
  end
end
