class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category,    index: true
      t.string     :name,        null: false
      t.string     :title,       null: false
      t.integer    :brand,       default: 0
      t.date       :end_of_life, null: false
      t.integer    :status,      default: 0

      t.timestamps null: false
    end
    add_foreign_key :products, :categories
  end
end
