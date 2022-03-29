require './cricketer.rb'
require './menu.rb'



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

    def self.num_wickets
        return @@num_wickets
    end

    # Returns a random number between 1 and 40 simulating the quality of the bowler's delivery
    def bowl
        @ball_quality = 1+rand(40)
    end

    def get_batter
        @batter = @@team[@@num_wickets]
    end

    def batter_skill
        @batter_skill = @batter.skill
    end

    # User selects a shot which determines risk of wicket and scoring potential
    def shot_selection
        puts "Select your shot!"
        begin
            @shot_input = gets.chomp.to_i
            raise (TypeError 'Invalid input. Enter 1-4 to select shot or 5 for instructions.') unless @shot_input.between?(1,5)
        rescue => e
            puts e.message
            retry
        
        end
            if @shot_input == 5
                this_game.instructions
            end
        return @shot_input
    end

    def wicket_calc
        @ball_quality + @shot_input - batter_skill
    end
    

    def is_wicket
        if wicket_calc > 29
            @@num_wickets += 1
        end
    end

    def score_calc
        (batter_skill) + (@shot_input) - @ball_quality
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

    def commentate
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
            when 0
                puts "A nice delivery by the bowler and #{@batter.name} can't get get the ball away. No run."
            end         
        end
end



# p team_australia[0].name
# test = Delivery.new(team_australia)
# puts test.get_batter.name



# test = Delivery.new
# puts test.get_batter

# def bat_chance(bat_skill, bat_agg)
#   bat_luck = rand(1..100)
#   (bat_luck * bat_skill) / bat_agg
# end

# def bowl_chance(bowl_skill, bowl_agg)
#   bowl_luck = rand(1..100)
#   (bowl_luck * bowl_skill * bowl_agg)
# end

# def wicket_chance(bat_skill, bowl_skill, bat_agg, bowl_agg)
#   puts bowl_luck = 1+rand(100)
#   puts bat_luck = 1+rand(100)
#   bowl = 9 * bowl_agg + bowl_skill
#   bat = (1 + bat_skill - bat_agg)
#   bowl / bat
# end

