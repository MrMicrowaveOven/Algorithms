require_relative '../lib/Divide'

describe 'divide' do
  it "divides two integers" do
    expect(divide(4,2)).to eq(2)
  end
  it "works with a negative" do
    expect(divide(-1,1)).to eq(-1)
  end
  it "works with two negatives" do
    expect(divide(-1,-1)).to eq(1)
  end
  it "rounds down fractions" do
    expect(divide(1,2)).to eq(0)
  end
  it "runs quickly" do
    expect(divide(-2147483647,-1)).to eq(2147483647)
  end
end
