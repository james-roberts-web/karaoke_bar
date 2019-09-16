class Room < KaraokeBar

attr_accessor :room_name, :genre, :capacity, :guest_list, :song_list

  def initialize (room_name, genre, capacity, guest_list=[], song_list=[])
    @room_name = room_name
    @genre = genre
    @capacity = capacity
    @guest_list = guest_list
    @song_list = song_list
  end

  def check_in_guest(new_guest)
    @guest_list << new_guest
  end

  def check_out_guest(old_guest)
    searched_guest = @guest_list.find{|guests| guests == old_guest}
    @guest_list.delete(old_guest)
  end

  def add_song_to_room(new_song)
    @song_list << new_song
  end

  def has_room_reached_capacity
    if @guest_list.count >= capacity
      return true
    else
      return false
    end
  end

  # def welcome_message_to_room
  #   for guests.each in @guest_list
  #     return "Welcome #{guests}"
  #   end
  # end

end
