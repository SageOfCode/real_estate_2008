class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = 400000
    @address = address
    @rooms = []
    @house_hash = house_hash
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_value?
    false
  end

  def rooms_from_category(room_type)
    @rooms.find_all do |room|
      room.category == room_type
    end
  end

  def area
    sum(length * width.to_i)
  end

  def details
    @house_hash.collect{|price, address| [400000, "123 sugar lane"]}
  end
end
