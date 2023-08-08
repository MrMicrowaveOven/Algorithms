const convertToReadableTime = (militaryTime) => {
  // const hours =


  if (hours === 0){
    var newHours = 12
  } else if (hours > 0 && hours < 13) {
    var newHours = hours
  } else {
    var newHours = hours - 12
  }

  if (minutes === 0){
    var newMinutes = ""
  } else if (minutes < 10) {
    var newMinutes = ":0" + minutes
  } else {
    var newMinutes = ":" + minutes
  }

  const meridian = hours < 12 ? "AM" : "PM"

  return(newHours + newMinutes + meridian)
}

module.exports = {
  convertToReadableTime: function(hours, minutes) {
    return convertToReadableTime(hours, minutes);
  }
};
