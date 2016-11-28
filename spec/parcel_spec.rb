require('rspec')
require('pry')
require('parcel')

describe('Parcel') do
  describe('#volume') do
    it("returns the volume when the parcel dimensions are given") do
      parcel = Parcel.new(3,4,5,2,5,25)
      expect(parcel.volume()).to(eq(60))
    end
  end

  describe('#cost_to_ship') do
    it('returns a cost to ship based on given inputs') do
      test_parcel = Parcel.new(3,4,5,2,5,25)
      expect(test_parcel.cost_to_ship()).to(eq('92 Dollars'))
    end
  end
end
