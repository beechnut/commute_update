require 'test_helper'

class UserTest < Minitest::Test

  def user
    @_user ||= User.new(phone: '+1 555 555 5555')
  end

  def test_valid
    assert user.valid?, user.errors.full_messages
  end

  def test_requires_phone_number
    user.phone = nil
    refute user.valid?
  end

  def test_requires_reasonable_number
    user.phone = '111-1111'
    refute user.valid?
  end

  def test_subscriptions
    assert_respond_to user, :subscriptions
  end

  def test_trips
    assert_respond_to user, :trips
  end

end
