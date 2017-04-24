require('rspec')
require('parcel')
require('pry')

describe(Parcel) do
  describe("#parcel") do

    it("returns an equilateral triangle if all sides are equal") do
      test_parcel = Parcel.new(5, 5, 10, 5, 100, 2)
      expect(test_parcel.cost_to_ship()).to(eq(34))
    end

    it("returns an equilateral triangle if all sides are equal") do
      test_parcel = Parcel.new(5, 5, 10, 10, 120, 2)
      expect(test_parcel.cost_to_ship()).to(eq(40))
    end
    it("returns an equilateral triangle if all sides are equal") do
      test_parcel = Parcel.new(5, 5, 10, 10, 100, 10)
      expect(test_parcel.cost_to_ship()).to(eq(35))
    end
    it("returns an equilateral triangle if all sides are equal") do
      test_parcel = Parcel.new(5, 5, 10, 10, 10, 10)
      expect(test_parcel.cost_to_ship()).to(eq(30))
    end
  end
end
