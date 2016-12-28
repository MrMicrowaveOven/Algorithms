require_relative '../lib/TimeConversion.rb'

describe 'time_conversion' do
  it "returns original when given AM" do
    expect(time_conversion("11:05:45AM")).to eq("11:05:45")
    expect(time_conversion("07:05:45AM")).to eq("07:05:45")
    expect(time_conversion("01:05:45AM")).to eq("01:05:45")
  end
  it "converts when given PM" do
    expect(time_conversion("01:05:45PM")).to eq("13:05:45")
    expect(time_conversion("07:05:45PM")).to eq("19:05:45")
    expect(time_conversion("11:59:59PM")).to eq("23:59:59")
    expect(time_conversion("12:59:59PM")).to eq("12:59:59")
  end
  it "converts to zero hour" do
    expect(time_conversion("12:05:45AM")).to eq("00:05:45")
  end
end
