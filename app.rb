require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  # short-term information store that lives on the server
  # store basic pieces of information, like the name of the current user, across multiple requests
  # session is a hash - therefore want to create keys for the variables you want to store
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names'do
    # Replaced session variables with global variables! ONLY in this 
    # session[:Player1] = Player.new(params[:Player1])
    $Player1 = Player.new(params[:Player1])
    $Player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play'do
    @player1 = $Player1.name
    @player2 = $Player2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $Player1.name
    @player2 = $Player2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end