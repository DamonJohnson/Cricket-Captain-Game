require './delivery.rb'

describe Delivery do
    subject(:testdelivery) { Delivery.new("David Yawner") }
    

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

end