class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :qty, limit: 15
      t.integer :price, limit: 15
      t.string :remark

      t.timestamps
    end
  end
end
