require './delivery.rb'
require './menu.rb'

class Game
    def initialize(player_team, opposition_team)
        @player_team = player_team
        @opposition_team = opposition_team
    end

    # Need to change batter
    def play
        while Delivery.get_ball_count < 60
            delivery1 = Delivery.new("John Doe")
            puts Delivery.get_ball_count
        end
    end
    
end

