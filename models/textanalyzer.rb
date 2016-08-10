#your text analyzer model code will go here.
class TextAnalyzer
  attr_accessor :text

  def initialize(text_string)
      @text = text_string
  end

  def remove_non_letters
    @text.gsub(/\W+/,"")
  end

  def number_of_words
    text.split(" ").length
  end

  def vowels
    @text.downcase.scan(/[aeoui]/).size
  end

  def consonants
    remove_non_letters.downcase.scan(/[^aeoui]/).size
  end

  def count_letters
    remove_non_letters.downcase.chars.each_with_object(Hash.new(0)) {|letter, histogram| histogram[letter] += 1}
  end

  def most_common_letter
    histogram = count_letters
    histogram.key(histogram.values.max)
  end

  def times_used(letter)
    count_letters[letter]
  end

end
