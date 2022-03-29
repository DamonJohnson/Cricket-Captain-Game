require './cricketer'
require './delivery'
require './ game.rb'

class Commentator

    def initialize(delivery)
        @delivery = delivery
        random = 1+rand(5)
    end

    def shot(delivery)
        if random == 1
            puts ""
    end
end




# def play
#         while Delivery.ball_count < 60
#             delivery = Delivery.new(@player_team)
#             delivery.get_batter
#             delivery.batter_skill
#             puts "The bowling team has claimed #{Delivery.num_wickets} wickets"
#             puts "Ball count is #{Delivery.ball_count}"
#             puts "The current batter is #{delivery.get_batter.name}"
#             puts "The current batter's skill is #{delivery.get_batter.skill}"
#             puts "The bowler has bowled a #{delivery.bowl}"
#             puts "The batter has played a #{delivery.shot_selection}"
#             puts "The wicket sum is #{delivery.wicket_calc}"
#             delivery.is_wicket
#             puts "The runs calc is #{delivery.score_calc}"
#             puts "Thats #{delivery.runs} runs"
#             Scorecard.runs(delivery)
#             Scorecard.balls
#             Scorecard.summary
#             Scorecard.check_score
#             puts Scorecard.wickets
#             # run.check_wickets
#         end
#         puts "You have have lost!" 
#         puts "You'll need to score faster next time"
#     end