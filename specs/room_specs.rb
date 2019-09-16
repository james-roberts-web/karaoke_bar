require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < MiniTest::Test

  def setup

    @room1 = Room.new("Room 1", "Rock", 4)
    @rock_room = Room.new("Room 1", "Rock", 8)
    @pop_room = Room.new("Room 2", "Pop", 8)
    @country_room = Room.new("Room 3", "Country", 4)
    @hip_hop_room = Room.new("Room 4", "Hip-hop", 4)

    @guest1 = Guest.new("Terry", 32, 1000, "Song 2")
    @guest2 = Guest.new("Ron", 34, 500, "Song 3")
    @guest3 = Guest.new("Pete", 31, 600, "Song 1")
    @guest4 = Guest.new("Jeff", 29, 200, "Song 1")
    @guest5 = Guest.new("Bob", 68, 1000, "Song 3")



  end

  # def test_room_has_name_name
  #   assert_equal("Room 1", @room1.room_name)
  # end
  #
  # def test_room_has_genre
  #   assert_equal("Rock", @room1.genre)
  # end
  #
  # def test_room_has_capacity
  #   assert_equal(8, @room1.capacity)
  # end
  #
  # def test_room_has_song_list
  #   assert_equal([], @room1.song_list)
  # end

  def test_room_can_check_in_guest()
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guest_list.count)
  end

  def test_room_can_check_out_guest()
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)

    @room1.check_out_guest(@guest1)

    assert_equal(2,@room1.guest_list.count)

  end

  def test_room_can_add_song()
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.song_list.count)
  end

  def test_room_under_capacity
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    assert_equal(false, @room1.has_room_reached_capacity)
  end

  def test_room_at_capacity
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    @room1.check_in_guest(@guest4)
    assert_equal(true, @room1.has_room_reached_capacity)
  end

  def test_room_over_capacity
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    @room1.check_in_guest(@guest4)
    @room1.check_in_guest(@guest5)
    assert_equal(true, @room1.has_room_reached_capacity)
  end

  # def test_welcome_message_to_room
  #   @room1.check_in_guest(@guest1)
  #   @room1.check_in_guest(@guest2)
  #   @room1.check_in_guest(@guest3)
  #   returned names = ["Terry", "Ron", "Pete"]
  #   assert_equal(returned names, @room1.welcome_message_to_room)
  # end


end
