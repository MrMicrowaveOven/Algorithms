def time_conversion(time)
  if time.match(/AM/)
    time.delete!("AM")
    if time.slice(0,2).to_i == 12
      time = time.slice(2, 100)
      time = "00" + time
    end
    return time
  else
    hour = (time.slice(0,2).to_i + 12).to_s
    time = time.slice(2, 100)
    time = (hour + time).delete("PM")
    if time.slice(0,2).to_i == 24
      time = "12" + time.slice(2, 100)
    end
    return (time).delete("PM")
  end
end
