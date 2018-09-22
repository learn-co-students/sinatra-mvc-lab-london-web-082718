require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
@translate = PigLatinizer.new
@user_input = params[:user_phrase]
erb :translation
  end

end
