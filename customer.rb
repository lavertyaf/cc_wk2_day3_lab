class Customer
attr_accessor :wallet
attr_reader :name

  def initialize(new_name, new_wallet_amount)

    @name = new_name
    @wallet = new_wallet_amount
  end

  def wallet_is_empty?
    return @wallet <= 0
  end

  def buys_drink(drink, pub)
    if wallet_is_empty? == false
      @wallet -=  drink.price
      pub.balance += drink.price
    end
  end

end
