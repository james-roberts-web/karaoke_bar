class Song < KaraokeBar

attr_accessor :song_name, :artist_name, :lyrics, :track_length

def initialize (song_name, artist_name, lyrics, track_length)
  @song_name = song_name
  @artist_name = artist_name
  @lyrics = lyrics
  @track_length = track_length
end



end
