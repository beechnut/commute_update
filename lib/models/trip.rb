class Trip < ActiveRecord::Base

  self.primary_key = :id

  has_many :subscriptions
  has_many :subscribers, through: :subscriptions, class_name: 'User'

  validates :id, presence: true, length: { maximum: 4 }

end
