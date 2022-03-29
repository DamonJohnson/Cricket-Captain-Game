require './delivery.rb'
require './menu.rb'
require './cricketer.rb'


class Game
    def initialize(player_team)
        @player_team = player_team

    end

    # Need to change batter

    def play
        while Delivery.ball_count < 60
            delivery = Delivery.new(@player_team)
            delivery.get_batter
            delivery.batter_skill
            puts "Ball count is #{Delivery.ball_count}"
            puts "The bowler has bowled a #{delivery.bowl}"
            puts "The batter has played a #{delivery.shot_selection}"
            puts "The wicket sum is #{delivery.wicket_calc}"
            puts "Is the batter out?"
            puts delivery.wicket?
            puts "The runs calc is #{delivery.score_calc}"
            puts "Thats #{delivery.runs} runs"
        end
    end
end

