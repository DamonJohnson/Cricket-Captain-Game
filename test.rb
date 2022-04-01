require "tty-prompt"




# prompt.ask("What is your name?", default: ENV["USER"])
# # => What is your name? (piotr)

# prompt.yes?("Do you like Ruby?")
# # => Do you like Ruby? (Y/n)



def shot_selection
        prompt = TTY::Prompt.new
        input = prompt.select("Select your shot", %w(Defensive Balanced Attacking Very-Attacking Instructions))
        if input == "Defensive"
            @shot_input = 1
        elsif input == "Bal
            anced"
            @shot_input = 2
        elsif input == "Attacking"
            @shot_input = 3
        elsif input == "Very-Attacking"
            @shot_input = 4
        elsif input == 'Instructions'
            # Game.instructions
        end
    end