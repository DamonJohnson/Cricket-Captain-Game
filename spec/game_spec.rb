require './game'

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


describe Game do
     subject(:testgame) { Game.new(team_australia, 'Australia', 20, 160) }

     it 'can be instantiated' do
        expect(testgame).not_to be_nil
        expect(testgame).to be_an_instance_of Game
    end

end