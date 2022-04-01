require './cricketer.rb'
require './menu.rb'
require "tty-prompt"



# Delivery class is used to determine the outcome of ball that is bowled in the game
class Delivery
    attr_accessor :ball_count, :num_wickets
    @@ball_count = 0
    @@num_wickets = 0

    # Everytime the ball is bowled in the game, a new instance of the delivery class is created
    def initialize(team)
        @@ball_count += 1
        @@team = team
    end
    
    # Returns the ball count to determine how long is left in the game
    def self.ball_count
        return @@ball_count
    end
    
    # Returns the number of wickets that have been fallen in the game
    def self.num_wickets
        return @@num_wickets
    end

    # Returns a random number between 1 and 40 simulating the quality of the bowler's delivery
    def bowl
        @ball_quality = 1+rand(40)
    end

    # Returns the batter who will be involved in this instance of the delivery
    def get_batter
        @batter = @@team[@@num_wickets]
    end

    # Returns the batter's skill level
    def batter_skill
        @batter_skill = @batter.skill
    end

    # User selects a shot which determines risk of wicket and scoring potential
    def shot_selection
        prompt = TTY::Prompt.new
        input = prompt.select("Select your shot", %w(Defensive Balanced Attacking Very-Attacking))
        if input == "Defensive"
            @shot_input = 1
        elsif input == "Balanced"
            @shot_input = 2
        elsif input == "Attacking"
            @shot_input = 3
        elsif input == "Very-Attacking"
            @shot_input = 4
        else
            puts "please select an a shot selection option"
        end
    end

    # Calculates the value that determines if a wicket has occured
    def wicket_calc
        @ball_quality + @shot_input - batter_skill
    end
    
    #  If a wicket occurs, adds one to the total of wickets
    def is_wicket
        if wicket_calc > 29
            @@num_wickets += 1
        end
    end

    # Calculates the value that determines how many runs have been scored on this delivery
    def score_calc
        batter_skill + @shot_input - @ball_quality
    end
    
    # Returns the number of runs scored by the batsman
    def runs
        case score_calc
        when 10..100
            @runs = 6
        when 3..9
            @runs = 4
        when -1..2
            @runs = 3
        when -8..0
            @runs = 2
        when -20..-9
            @runs = 1
        else return 0
        end
    end

    # Provides commentary based on the number of runs scored by the player
    def commentate
        if wicket_calc > 29
            puts "Thats out! #{@batter.name} had no idea about that one and will be on his way back to the dressing room."
        end
        case @runs
            when 6
                puts "The bowler has attempted to catch #{@batter.name} with a bouncer and #{@batter.name} has rocked back for a pull shot. Six Runs!"
            when 4
                puts "The bowler has angled the ball in at the stumps and #{@batter.name} has slashed it away for four runs!"
            when 3
                puts "The bowler pitches the ball wide of off stump and #{@batter.name} is able to beat the in field. They run hard and pick up three runs!"
            when 2
                puts "The bowler swings the bowl away from the #{@batter.name} but he is able to get enough bat on it. They pick up two runs."
            when 1
                puts "The bowler lands short of a length on leg stump."
                puts "#{@batter.name} does well to get it away for single."
            else
                puts "A nice delivery by the bowler fooled the batsman there."
            end         
    end
end