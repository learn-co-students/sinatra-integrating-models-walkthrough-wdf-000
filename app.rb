require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

get '/' do
  erb :index
end

post '/' do
  @analyzed_text = TextAnalyzer.new(params[:user_text])
  @most_used_letter = @analyzed_text.most_used_letter[0]
  @letter_count = @analyzed_text.most_used_letter[1]
  erb :results
end


end
