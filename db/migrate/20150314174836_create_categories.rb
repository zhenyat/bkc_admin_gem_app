class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string  :name,   null: false
      t.string  :title,  null: false
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
