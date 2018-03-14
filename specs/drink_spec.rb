require('minitest/autorun')
require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 3)
    @drink2 = Drink.new("Wine", 5)
    @drink3 = Drink.new("Cider", 4)
    @drink4 = Drink.new("Cocktail", 7)
  end

  def test_drink_has_name
    assert_equal("Beer", @drink1.name)
  end

def test_drink_has_price
  assert_equal(5, @drink2.price)
end

end
