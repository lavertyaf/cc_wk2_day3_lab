require("minitest/autorun")
require_relative('../food')

class FoodTest < MiniTest::Test

  def setup
    @food1 = Food.new("Crisps", 1, 1)
    @food2 = Food.new("Burger", 6, 6)
    @food3 = Food.new("Curry", 5, 7)
    @food4 = Food.new("Peanuts", 1, 1)
  end

  def test_does_food_have_price
    assert_equal(5, @food3.price)
  end

  def test_does_food_have_name
    assert_equal("Burger", @food2.name)
  end

end
