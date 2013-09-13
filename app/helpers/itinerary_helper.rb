module ItineraryHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Maps for "
    if page_title.empty?
      page_title = "Unknown Park"
    end
    return "#{base_title} #{page_title}"
  end
  
  def randomColor
		color = "#%06x" % (rand * 0xffffff)
		return color
	end  
  
  def minsToHours(mins)
		hours = "%.2f" % (mins.to_f / 60.0)
		return hours.to_f
	end
  
  def readableHour(hour)
		intHour = hour.to_i;
		mins = (((hour -intHour) * 60)+0.5).to_i;
		finalString = "%02d:%02d" %[intHour, mins]
		
		return finalString;
		
	end
  
  def roundTo(num, digits)
		num = "%.#{digits}f" % (num)
		return num.to_f
	end
  
end
