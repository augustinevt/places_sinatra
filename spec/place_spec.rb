require('rspec')
require('place')

describe(Place) do
  before() do
    Place.clear()
  end

  describe 'Place#save' do
    it('should save instance to class array') do
      new_place = Place.new('milan')
      new_place.save()
      expect(Place.all()).to eq([new_place])
    end
  end
end
