require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	post '/' do
		text_from_user = params[:user_text]
		text = Textanalyzer.new(text_from_user)
		text.most_used_letter
=begin
		arr = text_from_user.gsub(" ","").split
		freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
		@letter = arr.max_by { |v| freq[v] }
		@max = freq[@letter]
		erb :results
=end
	end


end
