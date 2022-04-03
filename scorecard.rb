require './cricketer'
require './delivery'
require './game'
require 'tty-table'  

# Stores key statistics for current game
class Scorecard
    attr_accessor :total_runs, :balls
    
    def initialize(balls, target)
        @@balls = balls
        @@target = target
        @@total_runs = 0
        @@ball = 0
        # @player_team = player_team
    end

    # Returns the total runs for the game
    def self.sum_runs(delivery)
        @@total_runs += delivery.runs
    end

    def self.get_total_runs
        @@total_runs
    end

     # Checks the player's score and compares it to the target.
    def self.check_score
        puts "checking check_score gives @target = #{@@target}"
        # If players score reaches 100, the game ends
        if @@total_runs >= @@target
            puts "Congratulations you have won by X wickets"
            Game.end_game
        end
    end
    
    # Calculates remaining runs to win the game
    def self.runs_remaining
        @@target - @@total_runs
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
        @@balls - Delivery.ball_count
    end

    # Retuns the strikerate (runs per 100 balls)
    def self.strikerate
        100 * self.get_total_runs/self.balls
    end

    # Returns the runrate (runs per over (6 balls))
    def self.runrate
        (self.get_total_runs / (self.balls/6.00))
    end

    # Retuns the required runrate to win the game
    def self.req_runrate
        (self.runs_remaining / (self.balls_remaining/6.00))
    end


    # Table output for scorecard summary
    def self.summary
        table = TTY::Table.new(["Runs","Balls","Strike Rate", "Run Rate", "Req. Runs", "Req. Runrate"], [[Scorecard.get_total_runs, Scorecard.balls, Scorecard.strikerate, Scorecard.runrate, Scorecard.runs_remaining, Scorecard.req_runrate],])
        puts ""
        puts "                        SCORECARD                       "      
        puts table.render(:unicode)
        puts ""
    end

end
