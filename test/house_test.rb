require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'
require 'pry'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, [10, 13])
    @room_2 = Room.new(:bedroom, [11, 15])
    @room_3 = Room.new(:living_room, [25, 15])
    @room_4 = Room.new(:basement, [30, 41])
  end


  def test_it_exists
    @house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, @house
  end

  def test_price_exists
    assert_equal "$400000", @house.price
  end

  def test_address_exists
    assert_equal "123 sugar lane", @house.address
  end

  def test_rooms_exists
    assert_equal [], @house.rooms
  end

  def test_add_rooms_exists
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal [@room_1, @room_2, @room_3, @room_4], @house.rooms
  end

  def test_rooms_by_category
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal [@room_1, @room_2], @house.rooms_from_category(:bedroom)
    assert_equal @room_3, @house.rooms_from_category(:living_room)
    assert_equal @room_4, @house.rooms_from_category

  end
end
