require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestKaraokeBar < MiniTest::Test

  def setup

    @karaoke_bar = KaraokeBar.new("Super Bar Karaoke Bar", 25 )

    @room1 = Room.new("Room 1", "Rock", 4)
    @rock_room = Room.new("Room 1", "Rock", 8)
    @pop_room = Room.new("Room 2", "Pop", 8)
    @country_room = Room.new("Room 3", "Country", 4)
    @hip_hop_room = Room.new("Room 4", "Hip-hop", 4)

    @song1 = Song.new("Track title 1", "Artist 1", "Lyrics to 1", 240)
    @song2 = Song.new("Song 2", "Blur", "WooHoo", 180)
    @song3 = Song.new("Track title 3", "Artist 3", "Lyrics to 3", 300)
    @song4 = Song.new("Track title 4", "Artist 4", "Lyrics to 4", 270)
    @song5 = Song.new("Track title 5", "Artist 5", "Lyrics to 5", 360)

    @guest1 = Guest.new("Terry", 32, 1000)
    @guest2 = Guest.new("Ron", 34, 500)
    @guest3 = Guest.new("Pete", 31, 600)
    @guest4 = Guest.new("Jeff", 29, 200)
    @guest5 = Guest.new("Bob", 68, 1000)

  end

  def test_entry_fee_to_karaoke_bar
    customer_individual_entry_fee(@guest1.wallet)
    assert_equal(975, customer_individual_entry_fee(@guest1.wallet))
  end




end
