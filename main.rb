require './cricketer.rb'
require './scoreboard.rb'
require './delivery.rb'


def team_selection
  
  puts "Welcome to the Ruby Cricket Challenge!"
  puts "Please select your team"
  puts "1: Australia"
  puts "2: England"

  begin
    team_input = gets.chomp.to_i
    raise(TypeError, 'Invalid input. Enter 1 to select Australia. Enter 2 to select England.') unless team_input == 1 || team_input == 2
  rescue => e
    puts e.message
  retry
  end

  if team_input == 1
    player_team = 'Australia'
    opposition_team = 'England'
  elsif team_input == 2
    player_team = 'England'
    opposition_team = 'Australia'
  end

  start_game(player_team, opposition_team, 100)

end

def start_game(player_team, opposition_team, target)

  puts "You have chosen to play as #{player_team} against #{opposition_team}."
  puts "#{opposition_team} has batted first. You need to score #{target} runs in 10 overs to win. Goodluck!"
  puts "Enter 1 to start the game"
  puts "Enter 2 to view instructions"
  
  begin
    start_input = gets.chomp.to_i
  raise(TypeError, 'Invalid Input. Enter 1 to start the game. Enter 2 to view instructions.') unless start_input == 1 or start_input == 2
  rescue => e 
    puts e.message
    retry
  end

  if start_input == 1
    delivery.bowl
  elsif start_input == 2
    instructions(target)
    end
end

def instructions(target)
  puts "--------------------INSTRUCTIONS--------------------"
  puts "You need to score #{target} runs in 10 overs (60 balls)."
  puts "Before each ball, you will need to select a shot."
  puts "1: defensive shot."
  puts "2: balanced shot."
  puts "3: attacking shot."
  puts "4: very attacking shot."
  puts "If you play attacking shots you will score faster but there is a higher chance you will be dismissed."
  puts "Some batsmen are better than others. To see the batting score of each player enter 'scores'"
  puts "To start the game, enter 1."

  begin
    instructions_input = gets.to_i
    raise (TypeError 'Invalid input. Enter 1 to view the batting score of all players. Enter 2 to play the game.') unless instructions_input == 1 or instructions_input == 'scores'
  rescue => e
    puts e.message
    retry
  end

  if instructions_input == 'scores'
    scores
  elsif instructions_input == 1
    game.start
  end

end





# puts wicket_chance(0.5, 0.8, 1, 1)

#  > 99? "He's got him, he's gone!" : "Nice shot"

# team_selection
# instructions(20)
# start_game(100)


