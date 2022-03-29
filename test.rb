class Cricketer

  attr_accessor :name, :team, :skill

  def initialize(name, team, skill)
    @name = name
    @team = team
    @skill = skill
  end

end


# Initialises the Australian Team
team_australia = [
david_yawner = Cricketer.new('David Yawner', 'Australia', 7),
aaron_pinch = Cricketer.new('Aaron Pinch', 'Australia', 7),
marnus_loosebuschange = Cricketer.new('Marnus Loosebuschange', 'Australia', 8),
steve_sith = Cricketer.new('Steve Sith', 'Australia', 9),
usman_carcharger = Cricketer.new('Usman Carcharger', 'Australia', 7),
travis_shed = Cricketer.new('Travis Shed', 'Australia', 6),
ali_scary = Cricketer.new('Ali Scary', 'Australia', 5),
pat_cumin = Cricketer.new('Pat Cumin', 'Australia', 3),
mitchell_starch = Cricketer.new('Mitchell Starch', 'Australia', 3),
josh_asyuwood = Cricketer.new('Josh Asyuwood', 'Australia', 2),
gary_legoat = Cricketer.new('Gary LeGoat', 'Australia', 1),
]

# Initialises the England Team
team_england =
[
  jason_soy = Cricketer.new('Jason Soy', 'England', 6),
  jonny_barstool = Cricketer.new('Jonny Barstool', 'England', 7),
  joe_shmoot = Cricketer.new('Joe Shmoot', 'England', 9),
  eoin_organ = Cricketer.new('Eoin Organ', 'England', 7),
  ben_smokes = Cricketer.new('Ben Smokes', 'England', 8),
  jos_bottle = Cricketer.new('Jos Bottle', 'England', 7),
  chris_yokes = Cricketer.new('Chris Yokes', 'England', 4),
  liam_plankton = Cricketer.new('Liam Plankton', 'England', 3),
  stuart_broadsword = Cricketer.new('Stuart Broadsword', 'England', 3),
  jofra_carter = Cricketer.new('Jofra Carter', 'England', 9),
  jimmy_handstanderson = Cricketer.new('Jimmy Hanstanderson', 'England', 9)
]

# Delivery class is used to determine the outcome of ball that is bowled in the game
class Delivery
    attr_accessor :ball_count
    @@ball_count = 0
   

    # Everytime the ball is bowled in the game, a new instance of the delivery class is created
    def initialize(team)
        @@ball_count += 1
        @@team = team
    end
    
    # Returns the ball count to determine how long is left in the game
    def self.ball_count
        return @@ball_count
    end

    # Returns a random number between 1 and 40 simulating the quality of the bowler's delivery
    def bowl
        @ball_quality = 1+rand(40)
    end

    def get_batter
        @batter = @@team[0]
    end

    def batter_skill
        @batter.skill
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
        # Need to substitude batter skill
        wicket_chance = (@ball_quality + @shot_input - 5)
    end
    
    # Returns truthy if the batsman is dismissed
    def wicket?
    end

    # Returns the number of runs scored by the batsman
    def runs
    end

end

# p team_australia[0].name
test = Delivery.new(team_australia)
p test.get_batter
p test.batter_skill


def play(team)
        while Delivery.ball_count < 60
            delivery = Delivery.new(team)
            puts "Ball count is #{Delivery.ball_count}"
            puts "The bowler has bowled a #{delivery.bowl}"
            puts "The batter has played a #{delivery.shot_selection}"
            puts "The wicket sum is #{delivery.wicket_calc}"
        end
    end


