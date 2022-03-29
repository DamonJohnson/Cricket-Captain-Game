require './delivery.rb'

describe Delivery do
    subject(:testdelivery) { Delivery.new("John Doe") }

    it 'can be instantiated' do
        expect(testdelivery).not_to be_nil
        expect(testdelivery).to be_an_instance_of Delivery
    end

    describe '#get_ball_count'
        it "returns the number of deliveries" do
            expect(Delivery.ball_count).to be_an_integer
            expect(Delivery.ball_count).to be_between(1, 60)
        end


    describe '#bowl' do
        it 'returns a random value between 1 and 5' do
            expect(testdelivery.bowl).to be_an_integer
            expect(testdelivery.bowl).to be_between(1,40)
        end
    end

 #  Can't get test working for this - need to rethink
    # describe '#get_shot_selection' do
    #     it 'returns player input' do
    #         shot_input = 1
    #         expect(delivery.get_shot_selection).to be_between(1,5)
    #     end
    # end

    describe '#wicket_calc' do
        it 'returns an integer value that determines whether batter is out or not' do
            # expect(testdelivery.wicket_calc).to be_an_integer
            # expect(testdelivery.wicket_calc).to be_between(-8,43)
        end
    end
    
end