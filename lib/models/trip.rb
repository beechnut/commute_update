class Trip < ActiveRecord::Base

  self.primary_key = :id

  validates :id, presence: true, length: { maximum: 4 }
end
