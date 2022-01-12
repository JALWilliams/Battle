require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'

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
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play'do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end