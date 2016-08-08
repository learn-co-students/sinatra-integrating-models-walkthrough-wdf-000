require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

get '/' do
  erb :index
end

post '/' do
  @analyzed_text = TextAnalyzer.new(params[:user_text])
  @word_count = @analyzed_text.count_of_words.to_i
  @vowels = @analyzed_text.count_of_vowels.to_i
  @consonants = @analyzed_text.count_of_consonants
  @most_common_letter = @analyzed_text.most_used_letter[0].upcase
  @most_common_times = @analyzed_text.most_used_letter[1].to_i
  erb :results
end


end