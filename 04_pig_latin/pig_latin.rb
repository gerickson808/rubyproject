
def translate phrase
	consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	punctuation = [".",",","?","!"]
	phrase=phrase.split.map{|word|
		is_capital = false
		if word.capitalize == word
			is_capital = true;
		end
		word = word.split("")
		i=0
		is_consonant=true
		first = ""
		while is_consonant==true
			if consonants.include?(word[i].downcase)
				if word[i]=="q"
					if word[i+1]=="u"
						2.times do
							word.delete_at(i)
						end
						word.push("qu")
					else
						word.insert(-1,word.delete_at(i))
					end
				else
					word.insert(-1,word.delete_at(i))
				end
			else
				is_consonant=false
			end
		end
		word.push("ay")
		word.each_index do |j|
			if punctuation.include?(word[j])
				word.insert(-1,word.delete_at(j))
			end
		end
		word = word.join
		#puts word
		if is_capital
			word = word.capitalize
		else 
			word
		end		
	}
	phrase.join(' ')
end

