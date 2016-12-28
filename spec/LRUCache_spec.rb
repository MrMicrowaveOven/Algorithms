require_relative '../lib/LRUCache'
describe LRUCache do
  describe "#set" do
    it "sets" do
      L = LRUCache.new(2)
      L.set(2,1)
      expect(L.get(2)).to eq(1)
      L.set(2,2)
      expect(L.get(2)).to eq(2)
    end
    it "releases information beyond its capacity" do
      L.set(3,5)
      L.set(4,7)
      expect(L.get(3)).to eq(5)
      expect(L.get(2)).to eq(-1)
    end
  end
end
