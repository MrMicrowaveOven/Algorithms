require_relative '../lib/MaxArea'
require_relative '../lib/MaxArea_large_arr'
describe "max_area" do
  it "returns the largest area" do
    expect(max_area([1,8,6,2,5,4,8,3,7])).to eq(49)
  end
  it "returns the largest with array of length 2" do
    expect(max_area([1,2])).to eq(1)
  end
  it "works with very large arrays" do
    expect(max_area(LARGE_ARR)).to eq(200)
  end
end
