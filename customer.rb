class Customer
attr_accessor :wallet, :drunkness
attr_reader :name, :age

  def initialize(new_name, new_wallet_amount, new_age)

    @name = new_name
    @wallet = new_wallet_amount
    @age = new_age
    @drunkness = 0

  end

  def wallet_is_empty?
    return @wallet <= 0
  end

  def buys_drink(drink, pub)
    if wallet_is_empty? == false && is_old_enough? == true && is_too_drunk? == false
      @wallet -=  drink.price
      pub.balance += drink.price
      @drunkness += drink.alcohol
    end
  end

  def is_old_enough?

    return @age >= 18
  end

  def is_too_drunk?
    return @drunkness > 12
  end

  def buys_food(food, pub)
    if wallet_is_empty? == false && is_old_enough? == true
      @wallet -= food.price
      pub.balance += food.price
      @drunkness -= food.rejuvenation
    end
  end

end
