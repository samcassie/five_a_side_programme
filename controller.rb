require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/players_controller')
require_relative('controllers/teams_controller')

get '/' do
    @players = Player.all()
    @teams = Team.all()
    erb( :index )
end
