module ItineraryHelper

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
	
	def DateString(num, start)
		formattedString = "Day #{num} - "+(start + num.days-1).strftime("%A, %B %d")+": ";
		return formattedString;
		
	end
  
  def driveLink(lat1, long1, lat2, long2)
		#https://maps.google.com/maps?saddr=39.23,-75.123&daddr=39.99,-74.83
		baseUrl = "https://maps.google.com/maps?"
		return baseUrl + "saddr="+lat1.to_s+","+long1.to_s+"&daddr="+lat2.to_s+","+long2.to_s
	end
	
  def hikeLink(name)
		#https://www.google.com/search?btnl=1&q=site:summitpost.org+Mount+Mansfield%2C+VT
		baseUrl = "https://www.google.com/search?btnI&q=summitpost.org+"
		return baseUrl + name.to_s
	end
	
  
end
