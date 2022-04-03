require './cricketer'
require './delivery'
require './game'
require './scorecard'
require 'tty-prompt'
require 'tty-table'

# Menu class provides user controlled main methods and controls for the game
# User can navigate menus with simple integer inputs
class Menu
  attr_accessor :player_team, :opposition_team, :team_australia, :team_england, :overs, :target

  def initialize(team_australia, team_england, overs, difficulty)
    player_team = []
    opposition_team = []
    @team_australia = team_australia
    @team_england = team_england
    @overs = overs
    @difficulty = difficulty
  end

  # Run at the start of the game to allow the player to start a new game
  def landing_menu
    prompt = TTY::Prompt.new
    input = prompt.select('Welcome to the Cricket Challenge Game', %w[Begin Instructions])
    if input == 'Begin'
      team_selection
    elsif input == 'Instructions'
      instructions
    else
      team_selection
    end
  end

  # Allows player to select their team
  def team_selection
    prompt = TTY::Prompt.new
    input = prompt.select('Select your team', %w[Australia England])
    if input == 'Australia'
      @player_team = team_australia
      @opposition_team = team_england
      @player_team_name = 'Australia'
      @opposition_team_name = 'England'
    elsif input == 'England'
      @player_team = team_england
      @opposition_team = team_australia
      @player_team_name = 'England'
      @opposition_team_name = 'Australia'
    end
  end

  def get_target(overs, difficulty)
    if difficulty == 'easy'
      4 * overs.to_i
    elsif difficulty == 'medium'
      6 * overs.to_i
    elsif difficulty == 'hard'
      8 * overs.to_i
    else
      100
    end
  end

  def output_target
    puts "You have chosen to play as #{@player_team_name} against #{@opposition_team_name}."
    puts "#{@opposition_team_name} has batted first. You need to score #{get_target(@overs,
                                                                                    @difficulty)} runs in #{@overs} overs to win. Goodluck!"
    start_game
  end

  # Checks if user is ready to start the game after selecting their team or if they'd like to view instructions
  def start_game
    prompt = TTY::Prompt.new
    input = prompt.select('Are you ready?', %w[Start Instructions])
    if input == 'Start'
      game = Game.new(player_team, @player_team_name, @overs, get_target(@overs, @difficulty))
      game.play
    elsif input == 'Instructions'
      instructions
    else
      game = Game.new(player_team, @player_team_name, @overs, get_target(@overs, @difficulty))
      game.play
    end
  end

  # Displays the instructions on how to control the batsman during the game
  def instructions
    puts ''
    puts ''
    puts '--------------------INSTRUCTIONS--------------------'
    puts "You need to score #{get_target(@overs, @difficulty)} runs in #{overs} overs."
    puts 'Before each ball, you will need to select a shot.'
    puts '1: Defensive shot.'
    puts '2: Balanced shot.'
    puts '3: Attacking shot.'
    puts '4: Very attacking shot.'
    puts 'If you play attacking shots you will score faster but there is a higher chance you will be dismissed.'
    puts 'Some batsmen are better than others. To see the batting score of each player select View-Scores'
    puts ''
    puts ''
    prompt = TTY::Prompt.new
    input = prompt.select('Are you ready?', %w[Start View-Scores])
    if input == 'Start'
      game = Game.new(player_team, @player_team_name, @overs, get_target(@overs, @difficulty))
      game.play
    elsif input == 'View-Scores'
      require 'tty-table'
      aus_scores = TTY::Table.new
      puts 'AUSTRALIAN BATTING ORDER'
      aus_scores << ['Batsman', 'Batting Score']

      i = 0
      while i < team_australia.length
        aus_scores << [team_australia[i].name, team_australia[i].skill]
        i += 1
      end
      puts aus_scores.render(:unicode)
      puts ''

      eng_scores = TTY::Table.new
      puts 'ENGLAND BATTING ORDER'
      eng_scores << ['Batsman', 'Batting Score']

      i = 0
      while i < team_england.length
        eng_scores << [team_england[i].name, team_england[i].skill]
        i += 1
      end
      puts eng_scores.render(:unicode)

      team_selection
    end
  end
end
