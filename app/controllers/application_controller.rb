require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # get '/' do
        
    #     erb :'./views/index'
    # end

    get '/' do
        # @teams = Team.all
        
        erb :'index'
    end

    post '/teams' do
        binding.pry
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        members = params
        @super_heros = 
        
        erb :'team'
    end

    
end
