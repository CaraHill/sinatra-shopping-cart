class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :product, index: true
      t.boolean :purchased

      t.timestamps null: false
    end
  end
end
