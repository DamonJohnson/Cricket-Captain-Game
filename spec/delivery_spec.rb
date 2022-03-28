require './delivery.rb'

describe Delivery do
    subject(:delivery) { Delivery.new("John Doe") }

    it 'can be instantiated' do
        expect(delivery).not_to be_nil
        expect(delivery).to be_an_instance_of Delivery
    end

    describe '#get_ball_count' do
        it "returns the number of deliveries" do
            expect(Delivery.get_ball_count).to be_between(1, 60)
        end
    end
   
    describe '#bowl' do
        it 'returns a random value between 1 and 5' do
            expect(delivery.bowl).to be_between(1,5)
        end
    end


    describe '#shot_selection' do
    end

    describe '#outcome' do
    end
    
end