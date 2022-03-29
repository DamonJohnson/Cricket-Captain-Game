require './cricketer'
require './delivery'


class Scorecard
    attr_accessor :runs, :balls,

    def initialize
        # @player_team = player_team
        @total_runs = 0
        @total_balls = 0
    end

    def runs
        puts @total_runs += delivery.runs
    end
    
    def runs_remaining
        100 - @total_runs
    end
    
    def balls
        Delivery.ball_count
    end

    def balls_remaining
        60 - Delivery.ball_count
    end

    def summary
        puts "Australia has scored #{runs} runs from #{balls}"
    end
end

