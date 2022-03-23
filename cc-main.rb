

class Player
    attr_reader :name, :team, :batting_skill, :bowling_skill

    def initialize(name, team, batting_skill, bowling_skill)
        @name = name
        @team = team
        @batting_skill = batting_skill
        @bowling_skill = bowling_skill
    end
end

pat_cummins = Player.new("Pat Cummins", "Australia", 20, 90)
p pat_cummins