require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_test = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
