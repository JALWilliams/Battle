require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  # short-term information store that lives on the server
  # store basic pieces of information, like the name of the current user, across multiple requests
  # session is a hash
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names'do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect '/play'
  end

  get '/play'do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end