require './delivery.rb'
require './menu.rb'
require './cricketer.rb'
require './scorecard'


class Game
    def initialize(player_team, player_team_name)
        @player_team = player_team
        @player_team_name = player_team_name
      
    end


    def play
        while Delivery.ball_count < 60
            scorecard = Scorecard.new
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
            scorecard.balls
            scorecard.check_score
            puts "The score is #{scorecard.wickets} wickets for #{scorecard.runs(delivery)} runs"
        end
        puts "You have have lost!" 
        puts "You'll need to score faster next time"
    end

    def check_wickets 
        if scorecard.wickets = 10
            puts "You have lost by #{scorecard.runs_remaining} runs"
            Game.end_game
        end
    end

    def self.end_game
        puts "Would you like to play again?"
        puts "1: Yes"
        puts "2: No"
        begin
            input = gets.to_i
            raise (TypeError 'Invalid input. Enter 1 to play again. Enter 2 to exit.') unless input == 1 or input == 2
        rescue => e
            puts e.message
            retry
        end

        if input == 1
            "Insert play again method"
        elsif input == 2
            "Thanks for playing"
        end
    end
    
end

