class Timer
  
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
  	seconds = @seconds
  	hours = seconds/(60*60)
  	seconds = seconds - hours*60*60
  	minutes = seconds / 60
  	seconds =  seconds - minutes * 60

  	"%02d:%02d:%02d" % [hours, minutes, seconds]
  end
end
