# Cricket Game
#### By Damon Johnson


## 1. Description
A cricket game where you have to chase down the target score within a limited number of overs.

## 2. Features
### 2.1 Customise Game Difficulty and Format
Players have the ability to set the length of the game as either 10 overs (standard), 20 overs or 50 overs.
Players have the ability ot change the difficult of the game which determines the target that the player has to chase done to win the game.
Game difficulty and format are changed with command line arguments (See Section 4)

### 2.2 Team Selection
Players have the ability to play as the Australian mens international cricket team or England mens international cricket team.
This can be done at the start of the game in through the in-game menu.

### 2.3 Delivery Simulation
For each delivery of the game, players must select a shot ranging from defensive to very aggressive. Player shot selection, cricketer batting skill and bowling quality are taken in to account to determine the runs scores for each delivery as well as the probability of a wicket occuring. The more aggressive the player manages their batsmen, the faster the player will accumulate runs but the faster they will lose wickets. The challenge of the game is for the player to manage the aggression of their batsmen throughout the innings.

### 2.4 Ball by Ball Commentary
After each delivery, the terminal outputs some mock commentary to inform the user of the state of the game. The

### 2.5 Scoreboard
At any point during the game, the user can check the scoreboard. The scoreboard provides a table view summary of key game statistics. It is recommended that the player checks the scoreboard to best manage their batsmen.

## 3. Installation Guide
### 3.1 Installation Summary
1. Ensure Ruby version 3.1.0 in installed.
2. Run `bundle install` in the command line from the project directory
3. Run `ruby main.rb` in the command line from the project directory to run the game. See Section 4 for command line arguments.

### 3.1 System/hardware Requirements
Windows or Unix based computer with access to command line terminal.

### 3.2 Dependencies
Ruby version 3.1.0
The program is dependent on the ruby gems displayed Section 3.3.

### 3.3 Ruby Gems
The following gems have been implemented in the program.
"rspec", "~> 3.11"
"tty-prompt", "~> 0.23.1"
"rainbow", "~> 3.1"
"tty-table", "~> 0.12.0"
source "https://rubygems.org"

To read the gemfile and install all dependencies run `bundle install` in the command line from the project directory


## 4. Command Line Arguments
To run the program enter `ruby main.rb` in the command line from the project directory.
This can be altered to include the game length and difficulty.

Length Options (Determines the number of balls of the game):
- 10 overs (default)
- 20 overs
- 50 overs
- 
- Difficulty Options (Determines the target score):
- Easy
- Medium (default)
- Hard

To pass these options in to the program, run the program in the command line from the project directory with the following format:
`ruby main.rb <overs> <difficulty>`
Example:
`ruby main.rb 20 medium`


## 5. Game Instructions
puts 'You need to score 100 runs in 10 overs (60 balls).
Before each ball, you will need to select a shot.
1: Defensive shot
2: Balanced shot
3: Attacking shot
4: Very attacking shot
If you play attacking shots you will score faster but there is a higher chance you will be dismissed.
Some batsmen are better than others. To see the batting score of each player select View-Scores'

## 6. Source Control
Github Repository:

## 7. Code Style Guide

## 8. References


