require './lib/trail'
require './lib/park'
require './lib/hiker'

RSpec.describe do

  it 'initializes' do
    trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

    expect(trail1).to be_an_instance_of(Trail)
  end

  it 'has attributes' do
    trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

    expect(trail1.name).to eq("Grand Wash")
    expect(trail1.length).to eq("2.2 miles")
    expect(trail1.level).to eq(:easy)
  end

  it 'handles new trails' do
    trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
    trail3 = Trail.new({name: 'Chimney Rock Loop', length: '3.6 miles', level: :strenuous})
    trail4 = Trail.new({name: "Queen's/Navajo Loop", length: '2.9 miles', level: :moderate})
    trail5 = Trail.new({name: 'Rim Trail', length: '11 miles', level: :easy})
    trail6 = Trail.new({name: 'Tower Bridge', length: '3 miles', level: :moderate})

    expect(trail2).to be_an_instance_of(Trail)
    expect(trail3).to be_an_instance_of(Trail)
    expect(trail4).to be_an_instance_of(Trail)
    expect(trail5).to be_an_instance_of(Trail)
    expect(trail6).to be_an_instance_of(Trail)
  end
end
# pry(main)> park1 = Park.new('Capitol Reef')
# #=> #<Park:0x00007fdd66927f48 @name="Capitol Reef", @trails=[]>
#
# pry(main)> park1.name
# #=> "Capitol Reef"
#
# pry(main)> park1.trails
# #=> []
#
# pry(main)> park1.add_trail(trail1)
#
# pry(main)> park1.add_trail(trail2)
#
# pry(main)> park1.trails
# #=> [#<Trail:0x00007fdd67232750...>, #<Trail:0x00007fdd66946060...>]
#
# pry(main)> trail3 = Trail.new({name: 'Tower Bridge', length: '3.0 miles', level: :moderate})
# #=> #<Trail:0x00007fdd68019a30 @length="3.0 miles", @level=:moderate, @name="Tower Bridge">
#
# pry(main)> park2 = Park.new('Bryce Canyon')
# #=> #<Park:0x00007fdd672aa7f0 @name="Bryce Canyon", @trails=[]>
#
# pry(main)> park2.add_trail(trail3)
#
# pry(main)> hiker = Hiker.new('Dora', :moderate)
# #=> #<Hiker:0x00007fdd6806da40 @experience_level=:moderate, @name="Dora", @parks_visited=[], @snacks={}>
#
# pry(main)> hiker.name
# #=> "Dora"
#
# pry(main)> hiker.experience_level
# #=> :moderate
#
# pry(main)> hiker.snacks
# #=> {}
#
# pry(main)> hiker.pack('water', 1)
#
# pry(main)> hiker.pack('trail mix', 3)
#
# pry(main)> hiker.snacks
# #=> {"water"=>1, "trail mix"=>3}
#
# pry(main)> hiker.pack('water', 1)
#
# pry(main)> hiker.snacks
# #=> {"water"=>2, "trail mix"=>3}
#
# pry(main)> hiker.parks_visited
# #=> []
#
# pry(main)> hiker.visit(park1)
#
# pry(main)> hiker.visit(park2)
#
# pry(main)> hiker.parks_visited
# #=> [#<Park:0x00007fdd66927f48...>, #<Park:0x00007fdd672aa7f0...>]
