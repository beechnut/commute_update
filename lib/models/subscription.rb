class Subscription < ActiveRecord::Base

  belongs_to :user
  belongs_to :trip

  validates :user, presence: true
  validates :trip, presence: true

end
