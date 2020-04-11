require_relative '../lib/MaxArea'
describe "max_area" do
  it "returns the largest area" do
    expect(max_area([1,8,6,2,5,4,8,3,7])).to eq(49)
  end
  it "returns the largest with array of length 2" do
    expect(max_area([1,2])).to eq(1)
  end
end
