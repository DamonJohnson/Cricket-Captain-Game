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
            puts Scorecard.wickets
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
            "Insert play again method call"
        elsif input == 2
            "Thanks for playing"
        end
    end
    
end

