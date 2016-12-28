
def avg_plat_number
  # Make dice_probs: an array of arrays containing all possible dice values
  # dice = [4,6,8,12,20]
  # die_probs = []
  # dice_probs = []
  # dice.each do |die|
  #   die.times do |die_value|
  #     die_probs << die_value + 1
  #   end
  #   dice_probs << die_probs
  #   die_probs = []
  # end

  dice_sums = Hash.new(0)
  4.times do |t|
    6.times do |h|
      8.times do |o|
        12.times do |d|
          20.times do |i|
            dice_sums[t + h + o + d + i + 5] += 1
          end
        end
      end
    end
  end
  dice_sums.keys.each do |value|
    p "Value: #{value}"
    p dice_sums[value]/46080.0
  end
  p dice_sums
  p "Highest prob is #{dice_sums.keys[dice_sums.values.index(dice_sums.values.max)]}, which has a chance of #{dice_sums.values.max}."
end
avg_plat_number
