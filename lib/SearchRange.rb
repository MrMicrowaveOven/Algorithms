def search_range(nums, target)
  startNum = -1
  endNum = -1
  chain = false
  nums.each_with_index do |el, ind|

    if el == target && !chain
      # p "starting chain with ind #{ind}"
      startNum = ind
      chain = true
    elsif el != target && chain
      # p "ending chain with ind #{ind - 1}"
      endNum = ind - 1
      break
    end
  end
  if endNum == -1 && startNum != -1
    endNum = nums.length - 1
  end
  [startNum, endNum]
end
