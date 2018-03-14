class Food

  attr_reader :price, :name, :rejuvenation

  def initialize(new_name, new_price, new_rejuvenation_level)

    @name = new_name
    @price = new_price
    @rejuvenation = new_rejuvenation_level

  end

end
