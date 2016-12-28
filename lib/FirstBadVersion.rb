def  first_bad_version(n)
  min = 0
  max = n
  good_walker = 0
  bad_runner = n
  until bad_runner - good_walker < 2
    mid = (bad_runner + good_walker)/2
    if is_bad_version(mid)
      bad_runner = mid
    else
      good_walker = mid
    end
  end
  bad_runner
end

def is_bad_version(version)
  version > 5
end
