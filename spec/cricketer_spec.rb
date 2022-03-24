require './cricketer'

describe Cricketer do
    let(:mr_cricket) { Player.new('Mr Cricket', 'Australia', 5) }

  it 'can be instantiated' do
    cricketer = Cricketer.new('Steve Smith', 'Australia', 9)
    expect(cricketer).not_to be_nil
    expect(cricketer).to be_an_instance_of Cricketer
  end

  describe .name do
    it 'returns the name' do
    expect(Cricketer.name).to eq ('Mr Cricket')
    end      
  end

end