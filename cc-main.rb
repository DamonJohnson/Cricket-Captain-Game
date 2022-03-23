

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
joe_root = Player.new("Joe Root", "England", 85, 30)

class Scoreboard
end

def Combined_Agg(bat_agg, bowl_agg)
    return bat_agg * bowl_agg
end

def wicket_chance(bat_skill, bowl_skill, bat_agg, bowl_agg)
    puts luck = (1+rand(100))
    bowl = luck * bowl_agg * bowl_skill
    bat = (bat_skill/bat_agg)
    return bowl/bat
end

puts wicket_chance(100, 1, 1, 1)

#  > 99? "He's got him, he's gone!" : "Nice shot"
