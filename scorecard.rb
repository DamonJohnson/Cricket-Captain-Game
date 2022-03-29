require './cricketer'
require './delivery'
require './game'


class Scorecard
    attr_accessor :runs, :balls

    def initialize
        # @player_team = player_team
         @@runs = 0
        @@balls = 0
    end

    def self.runs(delivery)
        puts @@runs += delivery.runs
    end

     # Checks the player's score and compares it to the target.
    def self.check_score
        # If players score reaches 100, the game ends
        if @@runs >= 30
            puts "Congratulations you have won by X wickets"
            Game.end_game
        end
    end
    
    def self.runs_remaining
        100 - @@runs
    end

    def self.wickets
        Delivery.num_wickets
    end

    def self.wickets_remaining
        10 - self.wickets
    end

    def self.balls
        Delivery.ball_count
    end

    def self.balls_remaining
        60 - Delivery.ball_count
    end

    def self.summary
        puts "Australia has scored #{@@runs} runs"
    end
end

