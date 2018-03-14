class Pub

attr_reader

  def initialize(new_name, amount_in_till, collection_of_drinks)

    @name = new_name
    @balance = amount_in_till
    @menu = collection_of_drinks

  end  

end
