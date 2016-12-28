require_relative '../lib/FirstBadVersion.rb'

describe "is_bad_version" do
  it "shows version 4 is good" do
    expect(is_bad_version(4)).to eq(false)
  end
  it "shows version 5 is good" do
    expect(is_bad_version(4)).to eq(false)
  end
  it "shows version 6 is bad" do
    expect(is_bad_version(6)).to eq(true)
  end
end

describe "first_bad_version" do
  it "finds version 6 to be the first bad version" do
    expect(first_bad_version(10)).to eq(6)
  end
end
