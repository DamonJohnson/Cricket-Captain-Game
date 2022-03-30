require './cricketer'
require './delivery'
require './game'
require './scorecard'

def get_input
    begin
        input = gets.chomp.to_i
        raise(TypeError, 'Invalid input. Enter 1 to start new game. Enter 2 to view instructions.') unless input == 1 || input == 2
    rescue => e
        puts e.message
    retry
    end
end

# Menu class provides user controlled main methods and controls for the game
# User can navigate menus with simple integer inputs
class Menu
    attr_accessor :player_team, :opposition_team, :team_australia, :team_england

    def initialize(team_australia, team_england)
        player_team = []
        opposition_team = []
        @team_australia = team_australia
        @team_england = team_england
    end

    # Run at the start of the game to allow the player to start a new game
    def landing_menu
        puts "Welcome to the Ruby Cricket Challenge!"
        puts "1: Start a new game"
        puts "2: View instructions"
        begin
            input = gets.chomp.to_i
            raise(TypeError, 'Invalid input. Enter 1 to start new game. Enter 2 to view instructions.') unless input == 1 || input == 2
        rescue => e
            puts e.message
        retry
        end
        if input == 1
            self.team_selection
        elsif input == 2
            self.instructions
        end
    end

    # Allows player to select their team
    def team_selection
        puts "Please select your team"
        puts "1: Australia"
        puts "2: England"
        begin
            input = gets.chomp.to_i
            raise(TypeError, 'Invalid input. Enter 1 to select Australia. Enter 2 to select England.') unless input == 1 || input == 2
        rescue => e
            puts e.message
        retry
        end
        if input == 1
            @player_team = team_australia
            @opposition_team = team_england
            @player_team_name = 'Australia'
            @opposition_team_name = 'England'
        elsif input == 2
            @player_team = team_england
            @opposition_team = team_australia
            @player_team_name = 'England'
            @opposition_team_name = 'Australia'
        end
        self.target
    end

    def target
        puts "You have chosen to play as #{@player_team_name} against #{@opposition_team_name}."
        puts "#{@opposition_team_name} has batted first. You need to score 100 runs in 10 overs to win. Goodluck!"
        self.start_game
    end

    # Checks if user is ready to start the game after selecting their team or if they'd like to view instructions
    def start_game
        puts "Are you ready?"
        puts "1: Start"
        puts "2: View Instructions"
        puts "3: Change Team"
        begin
            input = gets.chomp.to_i
        raise(TypeError, 'Invalid Input. Enter 1 to start the game. Enter 2 to view instructions.') unless input == 1 or input == 2 or input == 3
        rescue => e 
            puts e.message
            retry
        end
        if input == 1
            game = Game.new(player_team, @player_team_name)
            game.play
        elsif input == 2
            self.instructions
        elsif input == 3
            self.team_selection
        end
    end

    # Displays the instructions on how to control the batsman during the game
    def instructions
        puts "--------------------INSTRUCTIONS--------------------"
        puts "You need to score 100 runs in 10 overs (60 balls)."
        puts "Before each ball, you will need to select a shot."
        puts "1: Defensive shot."
        puts "2: Balanced shot."
        puts "3: Attacking shot."
        puts "4: Very attacking shot."
        puts "If you play attacking shots you will score faster but there is a higher chance you will be dismissed."
        puts "Some batsmen are better than others. To see the batting score of each player enter 'scores' in to the terminal."
        puts "To start the game, enter 1."

        begin
            input = gets.to_i
            raise (TypeError 'Invalid input. Enter 1 to view the batting score of all players. Enter 2 to play the game.') unless input == 1 or input == 'scores'
        rescue => e
            puts e.message
            retry
        end

        if input == 'scores'
            puts 'scores'
        elsif input == 1
            team_selection
        end

    end
end

