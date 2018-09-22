require 'pry'
class PigLatinizer


  def vowel?(str)
    ["a","e","i","o","u"].include?(str)
  end

  def piglatinize(text)
    words = text.split(" ")
    words.map do |word|
      letters = word.split(/([aeiouAEIOU].*)/)
      if letters[0] == ""
        letters << "way"
      else
        first = letters[1]
        last = letters[0]
        letters = [first, last]
        letters << "ay"
        # binding.pry
      end
        letters.join
    end.join(" ")
  end



end
