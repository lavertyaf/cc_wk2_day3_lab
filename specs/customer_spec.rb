require('minitest/autorun')
require_relative('../customer')
require_relative('../drink')
require_relative('../pub')

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 3)
    @drink2 = Drink.new("Wine", 5)
    @drink3 = Drink.new("Cider", 4)
    @drink4 = Drink.new("Cocktail", 7)
    menu =[@drink1, @drink2, @drink3, @drink4]

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
end
