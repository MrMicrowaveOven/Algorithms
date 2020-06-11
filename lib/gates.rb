def get_gates()

end

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
    @size.times do |i|
      num_switches = i + 1
      combs = @switches.combination(num_switches)
      combs.each do |comb|
        sum = comb.sum_by_element
      end
    end
  end
end

class Array
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
