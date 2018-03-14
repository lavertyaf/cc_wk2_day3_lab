class Customer
attr_accessor :wallet
attr_reader :name, :age

  def initialize(new_name, new_wallet_amount, new_age)

    @name = new_name
    @wallet = new_wallet_amount
    @age = new_age
  end

  def wallet_is_empty?
    return @wallet <= 0
  end

  def buys_drink(drink, pub)
    if wallet_is_empty? == false && is_old_enough? == true
      @wallet -=  drink.price
      pub.balance += drink.price
    end
  end

  def is_old_enough?
    return @age >= 18
  end

end
