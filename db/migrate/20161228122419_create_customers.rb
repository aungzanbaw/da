class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone, unique: true, limit: 15
      t.string :password
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
