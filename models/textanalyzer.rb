class TextAnalyzer 
  attr_accessor :text 

  def initialize(text)
    @text = text
  end 

  def count_of_words
    text.split(" ").size
  end
  
  def count_of_vowels
    text.downcase.scan(/[aeiuo]/).size
  end

  def count_of_consonants
    text.downcase.gsub!(/[aeiuo ]/, "").length 
  end

  def most_used_letter
    arr = text.downcase.gsub(/[ ]/, "").split("")
    arr.max_by { |i| arr.count(i) }.upcase
  end

  def occurence
    arr = text.downcase.gsub(/[ ]/, "").split("")
    arr.count(most_used_letter.downcase)
  end
end
