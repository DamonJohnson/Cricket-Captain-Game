require './cricketer'
require './delivery'
require './game'

# Stores key statistics for current game
class Scorecard
    attr_accessor :runs, :balls
    
    def initialize
        @@runs = 0
        @@ball = 0
        # @player_team = player_team
    end

    # Returns the total runs for the game
    def self.runs(delivery)
        @@runs += delivery.runs
    end

     # Checks the player's score and compares it to the target.
    def self.check_score
        # If players score reaches 100, the game ends
        if @@runs >= 100
            puts "Congratulations you have won by X wickets"
            Game.end_game
        end
    end
    
    # Calculates remaining runs to win the game
    def self.runs_remaining
        100 - @@runs
    end

    # Returns total wickets that have fallen
    def self.wickets
        Delivery.num_wickets
    end

    # Returns the remaining wickets for the batting side
    def self.wickets_remaining
        10 - self.wickets
    end

    # Returns total balls bowled
    def self.balls
        Delivery.ball_count
    end

    # Returns balls remaining in the innings
    def self.balls_remaining
        60 - Delivery.ball_count
    end


end