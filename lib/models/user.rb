require 'phone'
class User < ActiveRecord::Base

  has_many :subscriptions
  has_many :trips, through: :subscriptions

  validates :phone, presence: true
  validate  :valid_phone

  private

  def valid_phone
    unless Phoner::Phone.valid?(phone)
      errors.add(:phone, 'not a valid format')
    end
  end

end
