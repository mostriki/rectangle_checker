require('rspec')
require('rectangle')

describe(Shape) do
  describe("#square?") do


    it("returns false if it is not a square") do
      test_rectangle = Shape::Rectangle.new({:length=> 5, :width=> 7, :color=> "red", :line_width=> 3, :line_color=> "black"})
      expect(test_rectangle.square?()).to(eq(false))
    end

    it("returns true if it is a square") do
      test_rectangle = Shape::Rectangle.new({:length=> 15, :width=> 15, :color=> "red", :line_width=> 3, :line_color=> "black"})
      expect(test_rectangle.square?()).to(eq(true))
    end
  end
end
