require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../karaoke_bar.rb')
require_relative('../song')

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Terry", 32, 1000, "Song 2")
    @guest2 = Guest.new("Ron", 34, 500, "Song 3")
    @guest3 = Guest.new("Pete", 31, 600, "Song 1")

  end

  def test_guest_has_name
    assert_equal("Terry", @guest1.guest_name)
  end

  def test_guest_has_age
    assert_equal(32, @guest1.age)
  end

  def test_guest_has_wallet
    assert_equal(1000, @guest1.wallet)
  end

  def test_person_is_over_18
    @guest1.check_id
    assert_equal(true, @guest1.check_id)
  end

  def test_remove_cash_from_guest
    @guest1.remove_cash_from_guest(100)
    assert_equal(900, @guest1.wallet)
  end

  # def test_pay_entrance_fee
  #   @guest1.pay_entrance_fee(@entry_fee)
  #   assert_equal(975, @guest1.wallet)
  # end



end
