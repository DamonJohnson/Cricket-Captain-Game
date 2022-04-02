require './menu'
require './cricketer'
require './delivery'
require './game'
require './scorecard'


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

# Game is played by executing the main.rb file.
# Game starts by initializing menu class and running the landing_menu method
# Command line arguments determine user name, number of overs and game difficulty


overs = "10"
overs = ARGV[0] if ARGV[0]


difficulty = 2
difficulty = ARGV[1] if ARGV[1]

puts "Hello and welcome to the Ruby cricket chase!"

run = Menu.new(team_australia, team_england, overs, difficulty)
run.landing_menu
run.output_target
 
