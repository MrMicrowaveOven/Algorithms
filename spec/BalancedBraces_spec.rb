require_relative '../lib/BalancedBraces.rb'

describe 'BalancedBraces' do
  it "returns true when braces are balanced" do
    expect(balanced_braces("()[]{}")).to eq(true)
  end
  it "returns false when braces are not closed" do
    expect(balanced_braces("()[")).to eq(false)
  end
  it "returns false when braces are misordered" do
    expect(balanced_braces("([)]")).to eq(false)
  end
  it "returns false when same braces are layered" do
    expect(balanced_braces("(())")).to eq(false)
  end
end
