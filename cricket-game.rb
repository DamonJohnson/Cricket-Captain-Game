require './cricketer.rb'
require './scoreboard.rb'

# Main method controls general game flow
def start_menu(target)
  
  puts "Welcome to the Ruby Cricket Challenge!"
  puts "Please select  your team"
  puts "1: Australia"
  puts "2: England"
  team_input = gets.chomp.to_i

  if team_input == 1
    player_team = 'Australia'
    opposition_team = 'England'
  elsif team_input == 2
    player_team = 'England'
    opposition_team = 'Australia'
  end

  puts "You have chosen to play as #{player_team} against #{opposition_team}."
  puts "#{opposition_team} has batted first. You need to score #{target} runs in 10 overs to win. Goodluck!"
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

# puts wicket_chance(0.5, 0.8, 1, 1)

#  > 99? "He's got him, he's gone!" : "Nice shot"


start_menu(100)


