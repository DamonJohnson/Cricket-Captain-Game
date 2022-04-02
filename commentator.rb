require './cricketer'
require './delivery'
require './ game.rb'

class Commentator

    def initialize(delivery)
        @delivery = delivery
        random = 1+rand(5)
    end

    def shot(delivery)
        if random == 1
            puts ""
    end
end

