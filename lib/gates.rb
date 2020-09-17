class GateGroup
  attr_reader :size, :switches
  def initialize(size, switches)
    @size = size
    @switches = set_switches(switches)
  end

  def set_switches(switches)
    good_switches = []
    switches.each_with_index do |switch, index|
      good_switches[index] = set_switch(switch)
    end
    good_switches
  end

  def set_switch(switch)
    good_switch = Array.new(size, 0)
    switch.each do |index|
      good_switch[index] = 1
    end
    good_switch
  end

  def get_solution
    solution_combs = nil
    @size.times do |i|
      num_switches = i + 1
      combs = @switches.combination(num_switches).to_a
      combs.each do |comb|
        sum = comb.sum_by_element.set_to_binary
        if sum.all? {|el| el == 1}
          solution_combs = comb
        end
      end
    end
    translate_to_switch_indexes(solution_combs)
  end

  def translate_to_switch_indexes(solution_combs)
    indices = []
    solution_combs.each do |solution_comb|
      indices << switches.index(solution_comb)
    end
    indices
  end
end

class Array
  def set_to_binary
    map {|el| el % 2}
  end

  def sum_by_element
    sum = Array.new(self[0].length, 0)
    each do |arr|
      arr.each_with_index do |el, index|
        sum[index] += el
      end
    end
    sum
  end
end

switches = [
  [1,4],
  [1,4,6],
  [1,6],
  [3],
  [2,4],
  [0,2,4],
  [0,2,4,5,6]
]

size = 7

gg = GateGroup.new(size, switches)
p gg.get_solution
