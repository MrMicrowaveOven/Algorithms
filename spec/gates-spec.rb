require_relative '../lib/gates'

describe 'Array' do
  describe 'set_to_binary' do
    it 'turns each element into mod 2' do
      arr = [1,2,3]
      expect(arr.set_to_binary).to eq([1,0,1])
    end
  end
  describe 'sum_by_element' do
    it 'sums each element in an array' do
      arr1 = [1,2,3]
      arr2 = [1,2,3]
      nested_array = [arr1, arr2]
      expect(nested_array.sum_by_element).to eq([2,4,6])
    end
  end
end

describe 'GateGroup' do
  describe 'translate_to_switch_indexes' do
    it 'changes switches to switch indexes' do
      switch1 = [0, 2]
      switch2 = [2]
      switch3 = [1]
      gg = GateGroup.new(3, [switch1, switch2, switch3])
      switch1_good = [1,0,1]
      switch2_good = [0,0,1]
      switch3_good = [0,1,0]
      expect(gg.translate_to_switch_indexes([switch2_good, switch3_good])).to eq([1,2])
    end
  end
  describe 'set_switches' do
    it 'changes the set of switches from [1,3] format to [0,1,0,1] format' do
      switch1 = [0, 2]
      switch2 = [2]
      switch3 = [1]
      gg = GateGroup.new(3, [switch1, switch2, switch3])
      good_switches = [
        [1,0,1],
        [0,0,1],
        [0,1,0],
      ]
      expect(gg.switches).to eq(good_switches)
    end
  end
  describe 'get_solution' do
    it 'gives the solution when given a set of switches' do
      switch1 = [0, 2]
      switch2 = [2]
      switch3 = [1]
      gg = GateGroup.new(3, [switch1, switch2, switch3])
      expect(gg.get_solution).to eq([0, 2])
    end
  end
end
