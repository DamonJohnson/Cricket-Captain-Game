# Cricketer class represents each player within the game
# Each cricketer has been assigned a skill level that affects their ability to score runs as a batmsmen
class Cricketer

  attr_accessor :name, :team, :skill

  def initialize(name, team, skill)
    @name = name
    @team = team
    @skill = skill
  end

end
