def max_area(heights)
  sorted_heights = heights.sort.uniq.reverse
  max_water = 0

  sorted_heights.each do |height|
    indices_of_height = heights.indices_of_height_x(height)
    indices_of_height.each_with_index do |height, index_of_height|
      left_most = heights.left_most(index_of_height)
      if left_most
        water_amount = heights.how_much_water(left_most, index_of_height)
        max_water = water_amount if water_amount > max_water
      end

      right_most = heights.right_most(index_of_height)
      if right_most
        water_amount = heights.how_much_water(index_of_height, right_most)
        max_water = water_amount if water_amount > max_water
      end
    end
  end
  max_water
end


class Array
  def how_much_water(left_index, right_index)
    width = right_index - left_index
    height = [self[left_index], self[right_index]].min
    width * height
  end

  def indices_of_height_x(x)
    indices = []
    each_with_index do |height, i|
      if height == x
        indices << i
      end
    end
  end

  def left_most(center)
    center_height = self[center]
    i = 0
    until i == center
      # p center
      # p self[i]
      # p center_height
      if self[i] >= center_height
        return i
      end
      i += 1
    end
    return nil
  end

  def right_most(center)
    center_height = self[center]
    i = length - 1
    until i == center
      if self[i] >= center_height
        return i
      end
      i -= 1
    end
    return nil
  end
end
