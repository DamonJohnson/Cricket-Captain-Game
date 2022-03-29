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

    # Need to change batter

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
            puts "The score is #{Scorecard.wickets} wickets for #{Scorecard.runs(delivery)}"
            # run.check_wickets
        end
        puts "You have have lost!" 
        puts "You'll need to score faster next time"
    end

    def check_wickets 
        if Scorecard.wickets = 10
            puts "You have lost by #{Scorecard.runs_remaining} runs"
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
            run = Menu.new(team_australia, team_england)
            run.landing_menu
        elsif input == 2
            exit
        end
    end
    
end

