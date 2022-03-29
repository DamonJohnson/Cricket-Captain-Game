require './delivery.rb'
require './menu.rb'
require './cricketer.rb'
require './scorecard'


class Game
    def initialize(player_team)
        @player_team = player_team
        scorecard = Scorecard.new
    end

    # Need to change batter

    def play
        while Delivery.ball_count < 60
            delivery = Delivery.new(@player_team)
            delivery.get_batter
            delivery.batter_skill
            puts "The bowling team has claimed #{Delivery.num_wickets} wickets"
            puts "Ball count is #{Delivery.ball_count}"
            puts "The current batter is #{delivery.get_batter.name}"
            puts "The current batter's skill is #{delivery.get_batter.skill}"
            puts "The bowler has bowled a #{delivery.bowl}"
            puts "The batter has played a #{delivery.shot_selection}"
            puts "The wicket sum is #{delivery.wicket_calc}"
            delivery.is_wicket
            puts "The runs calc is #{delivery.score_calc}"
            puts "Thats #{delivery.runs} runs"
            Scorecard.runs(delivery)
            Scorecard.balls
            Scorecard.summary
            Scorecard.check_score
            # run.check_wickets
        end
        puts "You have have lost!" 
        puts "You'll need to score faster next time"
    end
    
   

    def check_wickets
    end

    def self.end_game
        puts "Would you like to play again?"
    end
    
end

