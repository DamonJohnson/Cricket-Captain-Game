require './delivery.rb'
require './menu.rb'
require './cricketer.rb'

class Game
    def initialize(player_team, opposition_team)
        @player_team = player_team
        @opposition_team = opposition_team
    end

    # Need to change batter
    def play
        while Delivery.get_ball_count < 60
            delivery = Delivery.new("Joe Dirt")
            puts "The ball count is #{Delivery.get_ball_count}"
            puts "The bowler has bowled a #{delivery.bowl}"
            puts "The batter has played a #{delivery.get_shot_selection}"
        end
    end
    
end

