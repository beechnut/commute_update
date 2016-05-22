class CreateTrips < ActiveRecord::Migration

  def change
    create_table :trips, id: false do |t|
      t.string   :id, limit: 4, null: false
      t.integer  :track
      t.string   :status
      t.string   :origin
      t.string   :destination
      t.datetime :scheduled_time
      t.integer  :lateness
      t.datetime :timestamp
    end
    add_index :trips, :id, unique: true
  end

end
