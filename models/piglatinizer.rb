class PigLatinizer

  def piglatinize(string)
    words = string.split
    words.map { |word| piglatinize_word(word) }.join(" ")
  end

  def first_letter_vowel?(word)
    "aeiou".include?(word[0].downcase)
  end

  def piglatinize_word(word)
    if first_letter_vowel?(word)
      word + "way"
    else
      until first_letter_vowel?(word)
        word = word[1..-1] + word[0]
      end
        word + "ay"
    end
  end

end
