require('minitest/autorun')
require_relative('../customer')
require_relative('../drink')
require_relative('../pub')
require_relative('../food')

class CustomerTest < MiniTest::Test

  def setup
    @food1 = Food.new("Crisps", 1, 1)
    @food2 = Food.new("Burger", 6, 6)
    @food3 = Food.new("Curry", 5, 7)
    @food4 = Food.new("Peanuts", 1, 1)

    @drink1 = Drink.new("Beer", 3, 3)
    @drink2 = Drink.new("Wine", 5, 4)
    @drink3 = Drink.new("Cider", 4, 2)
    @drink4 = Drink.new("Cocktail", 7, 8)
    @drink5 = Drink.new("Coffee", 2, 0)
    menu =[@drink1, @drink2, @drink3, @drink4, @drink5]

    @pub = Pub.new("Thrums", 150, menu)

    @customer = Customer.new("Simon", 30, 27)
    @customer2 = Customer.new("Mike", 15, 17)

  end

  def test_customer_has_name
    assert_equal("Simon", @customer.name)
  end

  def test_customer_has_money
    assert_equal(false, @customer.wallet_is_empty?)
  end

  def test_can_customer_buy_drink
    @customer.buys_drink(@drink1, @pub)
    assert_equal(27, @customer.wallet)
    assert_equal(153, @pub.balance)
  end

  def test_customer_has_age
    assert_equal(27, @customer.age)
  end

  def test_is_customer_old_enough__true
    assert_equal(true, @customer.is_old_enough?)
  end

  def test_is_customer_old_enough__false
    assert_equal(false, @customer2.is_old_enough?)
  end

  def test_is_customer_sober_at_first
    assert_equal(0, @customer.drunkness)
  end

  def test_customer_is_getting_drunk
    @customer.buys_drink(@drink4, @pub)
    assert_equal(8, @customer.drunkness)
  end

  def test_customer_is_refused
    @customer.buys_drink(@drink4, @pub)
    @customer.buys_drink(@drink3, @pub)
    @customer.buys_drink(@drink1, @pub)
    @customer.buys_drink(@drink2, @pub)
    assert_equal(13, @customer.drunkness)
  end

  def test_customer_buy_food__reduces_money
    @customer.buys_food(@food2, @pub)
    assert_equal(24, @customer.wallet)
    assert_equal(156, @pub.balance)
  end

  def test_customer_buy_food__reduces_drunkenness
    @customer.buys_drink(@drink4, @pub)
    @customer.buys_food(@food3, @pub)
    assert_equal(1, @customer.drunkness)
  end
end
