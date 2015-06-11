def echo input
	input
end

def shout input
	input.upcase
end

def repeat (input, x = 2)
	result = (input + " ") * x
	result.chomp(" ")
end

def start_of_word (word,length=1)
	result = word[0...length]
end

def first_word word
	word = word.split
	word[0]
end

def titleize phrase
	phrase.capitalize!
	words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
	phrase = phrase.split.map{|word|
		if words_no_cap.include?(word)
			word
		else
			word.capitalize
		end
		}.join(' ')
end