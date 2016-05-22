require 'test_helper'

class TripTest < Minitest::Test

  def trip
    @_trip ||= Trip.new(id: 'P523')
  end

  def test_valid
    assert trip.valid?, trip.errors.full_messages
  end

  def test_requires_trip_id
    trip.id = nil
    refute trip.valid?
  end

  def test_requires_short_trip_id
    trip.id = 'HELLO'
    refute trip.valid?
  end

  def test_unique_trip_id
    @duplicate_trip = Trip.create!(id: 'P523')
    assert_raises(ActiveRecord::RecordNotUnique) {
      trip.save!
    }
  ensure
    @duplicate_trip.destroy!
  end

end
