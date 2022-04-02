require './delivery.rb'
require './menu.rb'
require './cricketer.rb'
require './scorecard'


class Game
    def initialize(player_team, player_team_name)
        @player_team = player_team
        @player_team_name = player_team_name
        scorecard = Scorecard.new
    end


    def play
        while Delivery.ball_count < 60
            delivery = Delivery.new(@player_team)
            delivery.get_batter
            delivery.batter_skill
            Delivery.num_wickets
            delivery.bowl
            delivery.shot_selection
            delivery.wicket_calc
            delivery.is_wicket
            delivery.score_calc
            delivery.runs
            delivery.commentate
            Scorecard.balls
            Scorecard.check_score
            Scorecard.sum_runs(delivery)
            puts "The score is #{Scorecard.wickets} wickets for #{Scorecard.get_total_runs} runs."
            puts "Runs required is #{Scorecard.runs_remaining} runs off #{Scorecard.balls_remaining} balls."
        end
        puts "You have have lost!" 
        puts "You'll need to score faster next time."
        Game.end_game
    end


    def check_wickets 
        if Scorecard.wickets = 10
            puts "You have lost by #{Scorecard.runs_remaining} runs"
            Game.end_game
        end
    end

    def self.end_game
        "Thanks for playing the cricket challenge"
        "To play gain, enter 'ruby main.rb'"
    end
end