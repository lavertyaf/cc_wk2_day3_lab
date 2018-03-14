require('minitest/autorun')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup
    customer = Customer.new("Simon", 30)

    drink1 = Drink.new("Beer", 3)
    drink2 = Drink.new("Wine", 5)
    drink3 = Drink.new("Cider", 4)
    drink4 = Drink.new("Cocktail", 7)

    drinks_menu = [drink1, drink2, drink3, drink4]

    @pub = Pub.new("The Ship", 150, drinks_menu)
  end 

end
