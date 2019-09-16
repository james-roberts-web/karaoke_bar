class KaraokeBar

attr_accessor :karaoke_bar_name, :entry_fee, :rooms

  def initialize(entry_fee, rooms=[])
    @karaoke_bar_name = karaoke_bar_name
    @entry_fee = entry_fee
    @rooms = rooms
  end

  def customer_individual_entry_fee(guest_name)
    return @guest_name.wallet -= @entry_fee
  end




end
