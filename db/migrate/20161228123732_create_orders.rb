class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :vocher
      t.references :customer, foreign_key: true
      t.string :delivery
      t.string :gate
      t.string :remark
      t.string :payment
      t.integer :total

      t.timestamps
    end
  end
end
