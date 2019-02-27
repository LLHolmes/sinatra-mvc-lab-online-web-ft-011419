class PigLatinizer
  # attr_accessor :text

  # def initialize(text)
  #   @text = text
  # end

  def piglatinize(text)
    text_array = text.split(" ")
    text_array.length == 1 ? piglatinize_word(text) : piglatinize_phrase(text_array)
  end

  def piglatinize_word(word)
    if word[0].match(/[aAeEiIoOuU]/)
      word = word + "way"
    elsif word[1].match(/[bcdfghjklmnpqrstvwxz]/)
      if word[2].match(/[bcdfghjklmnpqrstvwxz]/)
        word = word[3..word.length] + word[0..2] + "ay"
      else
        word = word[2..word.length] + word[0..1] + "ay"
      end
    else
      word = word[1..word.length] + word[0] + "ay"
    end
  end

  def piglatinize_phrase(phrase)
    phrase.map { |word| piglatinize_word(word) }.join(" ")
  end

end
