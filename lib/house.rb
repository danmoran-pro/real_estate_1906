class House

  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms.push(room)
  end

  def rooms_from_category(category)
  

  end
end
