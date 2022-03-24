class Delivery
    

    def initialize
        ball_count += 1
    end
    # Generates random number between 1-10 to determine ball scores
    # Higher ball score is more difficult for the batsmen   
    def bowl
        
    end

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

    def outcome
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