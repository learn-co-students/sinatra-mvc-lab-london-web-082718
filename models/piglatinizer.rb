class PigLatinizer

  def piglatinize(input_str)
    x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
    puts x
    x
  end

  private

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    # word starts with vowel
    if !consonant?(word[0])
      word = word + "w"
    # word starts with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end

  # attr_reader :text
  #
  # def piglatinize(text)
  #   alpha = ('a'..'z').to_a
  #   vowels = %w[a e i o u]
  #   contanants = alpha - vowels
  #   words = text.split
  #   translated = []
  #
  #   words.each do |word|
  #     if vowels.include?(word[0])
  #       translated << word + "way"
  #     elsif contanants.include?(word[0]) && contanants.include?(word[1])
  #       translated << word[2..-1] + word[0] + word[1] + "way"
  #     elsif contanants.include?(word[0])
  #       translated << word[1..-1] + word[0] + "way"
  #     else
  #       translated << word
  #     end
  #   end
  #   translated.join(" ")
  # end


end
