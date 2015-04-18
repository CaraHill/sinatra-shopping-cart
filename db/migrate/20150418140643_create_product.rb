class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
