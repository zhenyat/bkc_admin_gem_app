class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :role,     default: 0
      t.string  :name,     null: false
      t.string  :email,    null: false
      t.string  :password, null: false
      t.integer :status,   default: 0

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
