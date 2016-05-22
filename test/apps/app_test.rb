require 'test_helper'

class AppTest < Minitest::Test

  include Rack::Test::Methods

  def app
    Apps::App
  end

  def setup
  end

  def teardown
  end

  def test_creates_user
    skip 'first time posting creates a user'
  end

  def test_creates_subscription
    skip 'first time texting creates a subscription'
  end

  def test_no_subscription_for_invalid_id
    skip 'with invalid ID, no subscription is created, error message sent back'
  end

  def test_destroys_subscriptions
    skip "texting STOP deletes a user's subscriptions"
  end

end
