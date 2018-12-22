require_relative '../lib/roman_to_integer'

describe 'roman_to_int' do
  it "works with Is" do
    expect(roman_to_int("III")).to eq(3)
  end

  it 'works with Is and Vs' do
    expect(roman_to_int("IV")).to eq(4)
  end

  it 'works with Is and Xs' do
    expect(roman_to_int("IX")).to eq(9)
  end

  it 'works with longer numbers' do
    expect(roman_to_int("LVIII")).to eq(58)
  end

  it 'works with huge numbers' do
    expect(roman_to_int("MCMXCIV")).to eq(1994)
  end

  it 'works with a starter subtractable' do
    expect(roman_to_int("CMLII")).to eq(952)
  end
end
