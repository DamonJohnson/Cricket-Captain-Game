class Player
  attr_reader :name, :team, :batting_skill, :bowling_skill

  def initialize(name, team, batting_skill, bowling_skill)
    @name = name
    @team = team
    @batting_skill = batting_skill
    @bowling_skill = bowling_skill
  end
end

pat_cummins = Player.new('Pat Cummins', 'Australia', 20, 90)
joe_root = Player.new('Joe Root', 'England', 85, 30)

class Scoreboard
end

class Delivery
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

puts wicket_chance(0.5, 0.8, 1, 1)

#  > 99? "He's got him, he's gone!" : "Nice shot"
