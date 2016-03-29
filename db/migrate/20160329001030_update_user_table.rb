class UpdateUserTable < ActiveRecord::Migration
  def change
    drop_table :users
    create_table :users do |t|
      t.string :username, null: false
      t.timestamps null: false
    end
    add_index :users, :username, unique: true
  end



end
