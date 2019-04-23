class PigLatinizer 

	def piglatinize(word)
		word.split.length == 0 ? piglatinize_word(word) : piglatinize_sentence(word)
	end 

	def piglatinize_word(word)

		if /[aeoui]/ =~ word[0].downcase
			"#{word}way"
		elsif /[bcdfghjklmnpqrstvwxyz]/ =~ word[0].downcase && /[bcdfghjklmnpqrstvwxyz]/ =~ word[1].downcase && /[bcdfghjklmnpqrstvwxyz]/ =~ word[2].downcase
			consonents = word.slice!(0..2)
			"#{word}#{consonents}ay"
		elsif /[bcdfghjklmnpqrstvwxyz]/ =~ word[0].downcase && /[bcdfghjklmnpqrstvwxyz]/ =~ word[1].downcase
			consonents = word.slice!(0..1)
			"#{word}#{consonents}ay"
		elsif /[bcdfghjklmnpqrstvwxyz]/ =~ word[0].downcase
			consonents = word.slice!(0)
			"#{word}#{consonents}ay"
		else
			word
		end
	end

	def piglatinize_sentence(sentence)
		sentence.split.map do |word|
			piglatinize_word(word)
		end.join(" ")
	end 
end
