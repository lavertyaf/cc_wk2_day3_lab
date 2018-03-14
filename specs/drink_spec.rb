require('minitest/autorun')
require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 3, 3)
    @drink2 = Drink.new("Wine", 5, 4)
    @drink3 = Drink.new("Cider", 4, 2)
    @drink4 = Drink.new("Cocktail", 7, 8)
    @drink5 = Drink.new("Coffee", 2, 0)
  end

  def test_drink_has_name
    assert_equal("Beer", @drink1.name)
  end

  def test_drink_has_price
    assert_equal(5, @drink2.price)
  end

  def test_is_it_alcohol_free__true
    assert_equal(0, @drink5.alcohol)
  end

  def test_is_it_alcohol_free__false
    assert_equal(2, @drink3.alcohol)
  end
end
