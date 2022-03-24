class InputError < StandardError
    def message
        return "Invalid input"
        return "Enter 1 to start the game"
        return "Enter 2 to view instructions"
    end
end