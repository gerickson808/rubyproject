class Book

	def title
		@title
	end

	def title=(title)
		@title = titleize(title)
	end

	def titleize(title)
		stop_words = %w(a an of the in and)
		title = title.split.map{|w| stop_words.include?(w) ? w : w.capitalize}
		title[0].capitalize!
		title.join(" ")
	end
end