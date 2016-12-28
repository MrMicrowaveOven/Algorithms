require_relative "../lib/swap_sortable.rb"
describe "swap_sortable" do
  it "returns 'yes' if it is already sorted" do
    expect(swap_sortable([1,4,7])).to eq("yes")
  end
  it "returns 'yes' if it is already sorted with common numbers" do
    expect(swap_sortable([1,4,4,6,7,7])).to eq("yes")
  end
  it "returns 'yes' if it has a length of 0 or one" do
    expect(swap_sortable([4])).to eq("yes")
    expect(swap_sortable([])).to eq("yes")
  end
  it "returns 'no' if it cannot be swap_sorted" do
    expect(swap_sortable([3,1,2])).to eq("no")
  end
  describe "swap" do
    it "returns 'swap' and two numbers if it is swappable" do
      expect(swap_sortable([1,4,3,7])).to eq("yes\nswap 2 3")
    end
    it "works with swapping numbers that are not consequtive" do
      expect(swap_sortable([1,3,15,6,8,13,4])).to eq("yes\nswap 3 7")
    end
    it "works with small arrays" do
      expect(swap_sortable([4,3])).to eq("yes\nswap 1 2")
    end
    it "works with large arrays" do
      expect(swap_sortable([4104, 8529, 49984, 54956, 63034, 82534, 84473, 86411, 92941, 95929, 108831, 894947, 125082, 137123, 137276, 142534, 149840, 154703, 174744, 180537, 207563, 221088, 223069, 231982, 249517, 252211, 255192, 260283, 261543, 262406, 270616,
        274600, 274709, 283838, 289532, 295589, 310856, 314991, 322201, 339198, 343271, 383392, 385869, 389367, 403468, 441925, 444543, 454300, 455366, 469896, 478627, 479055, 484516, 499114, 512738, 543943, 552836, 560153, 578730, 579688, 591631, 594436, 606033,
        613146, 621500, 627475, 631582, 643754, 658309, 666435, 667186, 671190, 674741, 685292, 702340, 705383, 722375, 722776, 726812, 748441, 790023, 795574, 797416, 813164, 813248, 827778, 839998, 843708, 851728, 857147, 860454, 861956, 864994, 868755, 116375,
        911042, 912634, 914500, 920825, 979477])).to eq("yes\nswap 12 95")
    end
    it "has preference over 'reverse'" do
      expect(swap_sortable([3,2,1])).to eq("yes\nswap 1 3")
    end
  end
  describe "reverse" do
    it "returns 'reverse' and two numbers if it is reversible" do
      expect(swap_sortable([1, 5, 4, 3, 2, 6])).to eq("yes\nreverse 2 5")
      expect(swap_sortable([4,3,2,1])).to eq("yes\nreverse 1 4")
      expect(swap_sortable([-3,-2,-1,0,4,3,2,1])).to eq("yes\nreverse 5 8")
    end
    it "doesn't give a false positive with weird order" do
      expect(swap_sortable([1,4,10,9,3])).to eq("no")
    end
  end
end

describe "Array.sorted?" do
  it "returns true if the array is sorted" do
    expect([1,4,6,8].sorted?).to eq(true)
  end
  it "returns false if the array is not sorted" do
    expect([1,6,4,8].sorted?).to eq(false)
  end
end
