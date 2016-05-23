require 'test_helper'

class AppTest < Minitest::Test

  include Rack::Test::Methods

  def app
    Apps::App
  end

  def setup
    Trip.create!(id: 'P523')
  end

  def teardown
    [Subscription, Trip, User].each(&:destroy_all)
  end

  def test_creates_user
    before  = User.count
    post '/subscriptions', {
      'From' => '+10001112222',
      'Body' => 'P523'
    }
    assert last_response.ok?, last_response.status
    after = User.count
    assert_equal 1, after - before
  end

  def test_creates_subscription
    before  = Subscription.count
    post '/subscriptions', {
      'From' => '+10001112222',
      'Body' => 'P523'
    }
    assert last_response.ok?, last_response.status
    assert_includes last_response.body, 'Ok'

    after = Subscription.count
    assert_equal 1, after - before
  end

  def test_no_subscription_for_invalid_id
    before  = Subscription.count
    post '/subscriptions', {
      'From' => '+10001112222',
      'Body' => 'INVALID_ID'
    }
    assert_equal 404, last_response.status
    assert_includes last_response.body, "can't find"
    after = Subscription.count
    assert_equal 0, after - before
  end

  def test_destroys_subscriptions
    skip "texting STOP deletes a user's subscriptions"
  end

end
