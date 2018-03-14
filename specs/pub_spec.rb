require('minitest/autorun')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup
    customer = Customer.new("Simon", 30, 27)

    drink1 = Drink.new("Beer", 3, 3)
    drink2 = Drink.new("Wine", 5, 4)
    drink3 = Drink.new("Cider", 4, 2)
    drink4 = Drink.new("Cocktail", 7, 8)
    @drink5 = Drink.new("Coffee", 2, 0)

    drinks_menu = [drink1, drink2, drink3, drink4, drink5]

    @pub = Pub.new("The Ship", 150, drinks_menu)
  end

  def test_pub_name
    assert_equal("The Ship", @pub.name)
  end

  def test_till_has_money
    assert_equal(false, @pub.is_the_till_empty?)
  end

  def test_pub_has_drinks
    assert_equal(4, @pub.there_are_drinks)
  end



end
