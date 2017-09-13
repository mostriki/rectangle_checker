require('rspec')
require('rectangle')

describe(Shape) do
  describe("#square?") do
    it("returns false if it is not a square") do
      test_rectangle = Shape::Rectangle.new(15, 30)
      expect(test_rectangle.square?()).to(eq(false))
    end

    it("returns true if it is a square") do
      test_rectangle = Shape::Rectangle.new(15, 15)
      expect(test_rectangle.square?()).to(eq(true))
    end
  end
end
