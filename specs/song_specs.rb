require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Track title 1", "Artist 1", "Lyrics to 1", 240)
    @song2 = Song.new("Song 2", "Blur", "WooHoo", 180)
    @song3 = Song.new("Track title 3", "Artist 3", "Lyrics to 3", 300)
    @song4 = Song.new("Track title 4", "Artist 4", "Lyrics to 4", 270)
    @song5 = Song.new("Track title 5", "Artist 5", "Lyrics to 5", 360)



  end

  def test_song_has_name
    assert_equal("Song 2", @song2.song_name)
  end

  def test_song_has_artist
    assert_equal("Blur", @song2.artist_name)
  end

  def test_song_has_lyrics
    assert_equal("WooHoo", @song2.lyrics)
  end

  def test_song_has_track_length
    assert_equal(180, @song2.track_length)
  end

end
