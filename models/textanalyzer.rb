class TextAnalyzer 
  attr_accessor :text 

  def initialize(text)
    @text = text
  end 

  def count_of_words
    text.split(" ").size
  end
  
  def count_of_vowels
    text.scan(/[aAeEiIuUoO]/).size
  end

  def count_of_consonants
    text.gsub!(/[aAeEiIuUoO ]/, "").length 
  end

  def most_used_letter
    @arr = text.gsub(/[ ]/, "").split("").sort
    arr.max_by { |i| arr.count(i) }
  end
  def occurence
    @arr.count(@most_common_letter)
  end
end
