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
        while Delivery.ball_count < 60
            delivery = Delivery.new
            delivery.get_batter
            puts "Ball count is #{Delivery.ball_count}"
            puts "The bowler has bowled a #{delivery.bowl}"
            puts "The batter has played a #{delivery.shot_selection}"
            puts "The wicket sum is #{delivery.wicket_calc}"
        end
    end
end

