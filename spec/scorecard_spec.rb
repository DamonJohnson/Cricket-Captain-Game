require './scorecard.rb'

describe Scorecard do
    

    it 'can be instantiated' do
        testscorecard = Scorecard.new(120, 160)
        expect(testscorecard).not_to be_nil
        expect(testscorecard).to be_an_instance_of Scorecard
    end

end
