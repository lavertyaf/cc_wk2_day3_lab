class Customer

attr_reader = :name, :new_wallet_amount

  def initialize(new_name, new_wallet_amount)

    @name = new_name
    @wallet = new_wallet_amount
  end

end
