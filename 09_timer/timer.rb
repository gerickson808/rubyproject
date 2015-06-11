class Timer

	def initialize
		#time = Time.new  Probably not needed?
		#start_time = time.inspect
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def time_string
		@time_string
	end

	def seconds=(seconds)
		if seconds > 3600
			hours = seconds/3600
			seconds -= 3600 * hours
		else
			hours = 0
		end
		if seconds > 60
			minutes = seconds/60
			seconds -= 60 * minutes
		else
			minutes = 0
		end
		@seconds = seconds

		hours < 10 ? hours = "0#{hours}" : hours
		minutes < 10 ? minutes = "0#{minutes}" : minutes
		seconds < 10 ? seconds = "0#{seconds}" : seconds
		@time_string = "#{hours}:#{minutes}:#{seconds}"
	end

end