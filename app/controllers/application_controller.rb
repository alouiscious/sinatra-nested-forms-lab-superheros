require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # get '/' do
        
    #     erb :'./views/index'
    # end

    get '/' do
        # @teams = Team.all
        erb :'super_hero'
    end

    post '/teams' do
        # @team = Team.new(params[:team])
        # params[:team][:members].each do |details|
        #     SuperHero.new(details)
        # end
        # @super_heroes = SuperHero.all

        
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        members = params[:team][:members]

        @super_heroes = members.map do |member_params|
            SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
        end
# binding.pry
        erb :'teams'

    end

    
end
