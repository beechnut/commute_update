class CreateSubscriptions < ActiveRecord::Migration

  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, index: true
      t.references :trip, null: false, index: true
    end
  end

end
