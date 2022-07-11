require './cricketer'

describe Cricketer do
  subject(:mr_cricket) { Cricketer.new('Mike Hussey', 'Australia', 10) }
  
  it 'can be instantiated' do
    cricketer = Cricketer.new('John Doe', 'Australia', 5)
    expect(mr_cricket).not_to be_nil
    expect(mr_cricket).to be_an_instance_of Cricketer
  end

  describe '#name' do
    it 'returns the name' do
      expect(mr_cricket.name).to eq ('Mike Hussey')
    end 
  end

  describe '#team' do
    it 'returns the team' do
      expect(mr_cricket.team).to eq ('Australia')
    end 
  end

  describe '#skill' do
    it 'returns the skill' do
      expect(mr_cricket.skill).to eq (10)
    end 
  end

end