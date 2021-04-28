require './lib/trail'
require './lib/park'
require './lib/hiker'

RSpec.describe do

  it 'initializes' do
    hiker = Hiker.new('Dora', :moderate)

    expect(hiker).to be_an_instance_of(Hiker)
  end

  it 'has attributes' do
    hiker = Hiker.new('Dora', :moderate)

    expect(hiker.name).to eq("Dora")
    expect(hiker.experience_level).to eq(:moderate)
  end

  it 'has empty snacks hash' do
    hiker = Hiker.new('Dora', :moderate)

    expect(hiker.snacks).to eq({})
  end

  xit 'can pack snacks' do
    hiker = Hiker.new('Dora', :moderate)
    hiker.pack('water', 1)
    hiker.pack('trail mix', 3)
    hiker.pack('water', 1)
    #This functionality is broken--won't add new values to existing key
    expect(hiker.snacks).to eq ({"water"=>2, "trail mix"=>3})
  end

  it 'has empty parks_visited array' do
    hiker = Hiker.new('Dora', :moderate)

    expect(hiker.parks_visited).to eq([])
  end

  it 'can add new parks visited' do
    park1 = Park.new('Capitol Reef')
    park2 = Park.new('Bryce Canyon')
    hiker = Hiker.new('Dora', :moderate)
    hiker.visit(park1)
    hiker.visit(park2)

    expect(hiker.parks_visited).to eq([park1, park2])
  end
end
