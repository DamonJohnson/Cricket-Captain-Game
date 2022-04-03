require './delivery'
require './menu'
require './cricketer'
require './scorecard'
require 'rainbow'

class Game
  def initialize(player_team, player_team_name, overs, target)
    @player_team = player_team
    @player_team_name = player_team_name
    @overs = overs
    @target = target
    @balls = overs.to_i * 6
    scorecard = Scorecard.new(@balls, @target)
  end

  def play
    while Delivery.ball_count < @balls and Scorecard.wickets_remaining > 0
      delivery = Delivery.new(@player_team)
      delivery.get_batter
      delivery.batter_skill
      Delivery.num_wickets
      delivery.bowl
      delivery.shot_selection
      delivery.wicket_calc
      delivery.is_wicket
      delivery.score_calc
      delivery.runs
      Scorecard.check_score
      delivery.commentate
      Scorecard.balls
      Scorecard.sum_runs(delivery)
      puts "The score is #{Scorecard.wickets} wickets for #{Scorecard.get_total_runs} runs."
      puts "Runs required is #{Scorecard.runs_remaining} runs off #{Scorecard.balls_remaining} balls."
    end
    puts Rainbow("#{@player_team_name} has lost by #{Scorecard.runs_remaining} runs.").red
    Game.end_game
  end

  def self.end_game
    puts 'Thanks for playing the cricket challenge'
    puts "To play gain, enter 'ruby main.rb'"
  end
end
