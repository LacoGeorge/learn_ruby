def translate string
	pig_string = ""
	words = string.split
	words.each do |word|
		punctuation = ""
		punctuation = get_punctuation(word)
		word = chop_off_punctuation(word)

		word = consonant_to_last(word)
		pig_string = pig_string + word +"ay" + punctuation + " "
	end
	pig_string.chop
end

def consonant_to_last word
	vowels = ["a", "e", "i","o", "u"]
	double_consonants = ["qu"]
	cap = false

	if word[0].downcase != word[0]
		cap = true
	end

	if double_consonants.include?(word[0..1].downcase)
		word = word[2..-1] + word[0..1]
		word = consonant_to_last(word)
	elsif vowels.include?(word[0].downcase) == false
			word = word[1..-1] + word[0]
			word = consonant_to_last(word)
	end
	if cap
	word.capitalize
	else
		word
	end
end

$punctuations = [",", ".", "?", "!", ":"]
def chop_off_punctuation word
	i = -1
	while $punctuations.include? word[i]
		i= i -1
	end
	word[0..i]
end

def get_punctuation word
	i = -1
	there_is_punctuation = false
	while $punctuations.include? word[i]
		there_is_punctuation = true
		i= i -1
	end
	if there_is_punctuation
		word[(i+1)..-1]
	else
		""
	end
end
