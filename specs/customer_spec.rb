require('minitest/autorun')
require_relative('../customer')
require_relative('../drink')

class CustomerTest < MiniTest::Test

  def setup
    drink1 = Drink.new("Beer", 3)
    drink2 = Drink.new("Wine", 5)
    drink3 = Drink.new("Cider", 4)
    drink4 = Drink.new("Cocktail", 7)

    @customer = Customer.new("Simon", 30)
  end

end
