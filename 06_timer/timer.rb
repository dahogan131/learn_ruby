class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end
 
  def time_string
	  # if @seconds < 10
	  # 	seconds = @seconds.to_s
	  # 	"00:00:0#{seconds}"
	  # elsif 60 > @seconds > 10 
	  # 	seconds = @seconds.to_s
	  # 	"00:00:#{seconds}"
	  # elsif 70 @seconds 

	  # end
#=======================================================
	  # case @seconds
	  # when 0...9
	  # 	  	"00:00:0#{@seconds}"
	  # when 10...59
	  # 	"00:00:#{@seconds}"
	  # when 60...69
	  # 	"00:01:0#{@seconds-60}"
	  # when 70...129
	  # 	"00:01:#{@seconds-60}"
	  # end
	  #would be able to make this work much better if divided the seconds by hours & minutes
  	  # case @seconds
  	  # when 0...9
  	  case @seconds
  	   when 0...9
	  	  	"00:00:0#{@seconds}"
	  when 10...59
	  	"00:00:#{@seconds}"
	  when 60...69
	  	"00:01:0#{@seconds-60}"
	  when 70...129
	  	"00:01:#{@seconds-60}"
  	  when 3600...86400
  	  	p hours = @seconds/3600
  	  	p minutes = (@seconds % (hours*3600))/60
  	  	p seconds = @seconds - (hours*3600) - (minutes*60)
  	  	if hours < 10 && minutes < 10 && seconds < 10
  	  		"0#{hours}:0#{minutes}:0#{seconds}"
  	  	elsif hours > 10 && minutes < 10 && seconds < 10
  	  		"#{hours}:0#{minutes}:0#{seconds}"
  	  	elsif hours < 10 && minutes > 10 && seconds < 10
  	  		"0#{hours}:#{minutes}:0#{seconds}"
  	  	elsif hours < 10 && minutes < 10 && seconds > 10
  	  		"0#{hours}:0#{minutes}:#{seconds}"
  	  	elsif hours > 10 && minutes > 10 && seconds < 10
  	  		"#{hours}:#{minutes}:0#{seconds}"
  	  	elsif hours > 10 && minutes < 10 && seconds > 10
  	  		"#{hours}:0#{minutes}:0#{seconds}"
  	  	else
  	  		"0#{hours}:#{minutes}:#{seconds}"
  	  	end
  	  end

  end

end
