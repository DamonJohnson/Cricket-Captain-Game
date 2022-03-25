require './delivery.rb'

describe Delivery do
    subject(:delivery) { Delivery.new("John Doe") }

    it 'can be instanatied' do
        expect(delivery).not_to be_nil
        expect(delivery).to be_an_instance_of Delivery
    end

    describe ''


    describe '#bowl' do
    end

    describe '#shot_selection' do
    end

    describe '#outcome' do
    end
    
end