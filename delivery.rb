# Delivery class is used to determine the outcome of ball that is bowled in the game

class Delivery
    attr_accessor :batter, :ball_count
    @@ball_count = 0

    # Everytime the ball is bowled in the game, a new instance of the delivery class is created
    def initialize(batter)
        @@ball_count += 1
        @batter = batter
    end
    
    # Returns the ball count to determine how long is left in the game
    def self.get_ball_count
        return @@ball_count
    end

    # 

    # User selects a shot which determines risk of wicket and scoring potential
    def shot_selection
        begin
            shot_input = gets.chomp.to_i
            raise (TypeError 'Invalid input. Enter 1-4 to select shot or 5 for instructions.') unless shot_input.between?(1,5)
        rescue => e
            puts e.message
            retry
        
        end
            if shot_input == 5
                this_game.instructions
            end
    end
    
    # Returns truthy if the batsman is dismissed
    def wicket?
    end

    # Returns the number of runs scored by the batsman
    def runs
    end

end





def bat_chance(bat_skill, bat_agg)
  bat_luck = rand(1..100)
  (bat_luck * bat_skill) / bat_agg
end

def bowl_chance(bowl_skill, bowl_agg)
  bowl_luck = rand(1..100)
  (bowl_luck * bowl_skill * bowl_agg)
end

def wicket_chance(bat_skill, bowl_skill, bat_agg, bowl_agg)
  puts bowl_luck = 1+rand(100)
  puts bat_luck = 1+rand(100)
  bowl = 9 * bowl_agg + bowl_skill
  bat = (1 + bat_skill - bat_agg)
  bowl / bat
end

delivery1 = Delivery.new('adam')
delivery2 = Delivery.new('adam')
puts delivery1.batter
puts Delivery.get_ball_count


