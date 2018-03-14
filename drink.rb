class Drink

attr_reader :name, :price, :alcohol

  def initialize(drink_name, cost_of_drink, alcohol_level)

    @name = drink_name
    @price = cost_of_drink
    @alcohol = alcohol_level
  end

end
