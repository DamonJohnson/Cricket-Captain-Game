require './menu'


describe Menu do
  subject(:menu) { Menu.new }
  
  it 'can be instantiated' do
    menu = Menu.new
    expect(menu).not_to be_nil
    expect(menu).to be_an_instance_of Menu
  end
end

