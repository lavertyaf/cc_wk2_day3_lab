class Pub
attr_accessor :balance
attr_reader :name, :menu

  def initialize(new_name, amount_in_till, collection_of_drinks)

    @name = new_name
    @balance = amount_in_till
    @menu = collection_of_drinks

  end

  def is_the_till_empty?
    return @balance == 0
  end

  def there_are_drinks
    @menu.length
  end

end
