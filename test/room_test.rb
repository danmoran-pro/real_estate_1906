require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require "pry"
class RoomTest < Minitest::Test

  def setup
    @room_1 = Room.new(:bedroom, [10, 13])
    @room_2 = Room.new(:bedroom, [11, 15])
  end

  def test_it_exists
    @room_1 = Room.new(:bedroom, [10, 13])
    @room_2 = Room.new(:bedroom, [11, 15])
    assert_instance_of Room, @room_1
    assert_instance_of Room, @room_2
  end

  def test_category_exists
    assert_equal :bedroom, @room_1.category(:bedroom)
    assert_equal :area, @room_1.category(:area)
    assert_equal :bedroom, @room_2.category(:bedroom)
    assert_equal :area, @room_2.category(:area)

  end

  def test_area_exist
    assert_equal 130, @room_1.area_1
    assert_equal 150, @room_1.area_2
    assert_equal 375, @room_1.area_3
    assert_equal 1230, @room_1.area_4
  end

end
