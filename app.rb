require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names'do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    $game = Game.new($player1, $player2)
    redirect '/play'
  end

  get '/play'do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end