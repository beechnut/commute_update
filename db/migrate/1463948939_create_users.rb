class CreateUsers < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :phone, null: false
      t.string :language, null: false, default: 'en-us'
    end

    add_index :users, :phone, unique: true
  end

end
