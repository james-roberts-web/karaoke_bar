require_relative('karaoke_bar')
require_relative('song')

class Guest < KaraokeBar

  attr_accessor :guest_name, :age, :wallet, :favourite_song

  def initialize (guest_name, age, wallet, favourite_song)
    @guest_name = guest_name
    @age = age
    @wallet = wallet
    @favourite_song = favourite_song
  end

  def check_id
    if @age >= 18
      return true
    else
      return false
    end
  end
  
  def remove_cash_from_guest(amount)
    return @wallet -= amount
  end

  # def pay_entrance_fee(entry_fee)
  #   entry_fee = @karaoke_bar.entry_fee
  #   return @wallet -= entry_fee
  # end



end
