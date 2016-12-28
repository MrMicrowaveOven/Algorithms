require_relative '../lib/AToI'

describe 'my_atoi' do
  # it "converts a basic string to Integer" do
  #   expect(my_atoi("abc")).to eq(6)
  # end
  it "converts a string of integer" do
    expect(my_atoi("1")).to eq(1)
    expect(my_atoi("7")).to eq(7)
  end
  it "converts a string of integers" do
    expect(my_atoi("17")).to eq(17)
    expect(my_atoi("18472")).to eq(18472)
  end
  it "works with negatives" do
    expect(my_atoi("-1")).to eq(-1)
  end
  it "works with stupid +- and -+ notation (returns 0)" do
    expect(my_atoi("+-2")).to eq(0)
    expect(my_atoi("-+2")).to eq(0)
  end
  it "doesn't allow white space to mess up negatives" do
    expect(my_atoi("     -00134")).to eq(-134)
  end
  it "stops converting when a letter is reached" do
    expect(my_atoi("  -0012a42")).to eq(-12)
    expect(my_atoi("23a8f")).to eq(23)
  end
  it "stops converting when a space after a number is reached" do
    expect(my_atoi("   +0 123")).to eq(0)
  end
  it "doesn't mess up powers of 10 when there's a number after a space" do
    expect(my_atoi("123  456")).to eq(123)
  end
  it "stops counting if there's a space after a '-'" do
    expect(my_atoi("   - 321")).to eq(0)
  end
  it "stops counting if there's a space after a '+'" do
    expect(my_atoi("   + 321")).to eq(0)
  end
end
