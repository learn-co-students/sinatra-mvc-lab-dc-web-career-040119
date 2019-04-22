class PigLatinizer

  # attr_reader :text
  #
  # def initialize
  #   @text = text
  # end

  def piglatinize(text)
    text_arr = text.split(' ')

    pig_text_arr = text_arr.map do |word|
      if word[0].match?(/[aeiou]/i)
        "#{word}way"
      else
        split_word = word.partition(/[aeiou]\w*/)
        split_word.insert(0, split_word.delete_at(1)) << "ay"
        split_word.join
      end
    end

    pig_text_arr.join(' ')
  end
end