require 'test_helper'

class SubscriptionTest < Minitest::Test

  def subscription
    @_sub ||= Subscription.new(user: User.new, trip: Trip.new)
  end

  alias_method :sub, :subscription

  def test_valid
    assert sub.valid?, sub.errors.full_messages
  end

  def test_requires_user
    sub.user = nil
    refute sub.valid?
  end

  def test_requires_trip
    sub.trip = nil
    refute sub.valid?
  end

end
