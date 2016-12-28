require_relative '../lib/ZigZagConversion'

describe 'convert' do
  it "translates a basic string" do
    expect(convert("PAYPALISHIRING", 3)).to eq('PAHNAPLSIIGYIR')
  end
  it "works with a single row" do
    expect(convert("AB", 1)).to eq("AB")
  end
  it "works with a double row" do
    expect(convert("ABC", 2)).to eq("ACB")
  end
end
