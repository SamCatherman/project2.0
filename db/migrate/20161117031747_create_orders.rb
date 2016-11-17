class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.belongs_to :product
        t.belongs_to :farm
        t.decimal :price, precision: 2, scale: 2
        t.timestamps null: false
    end
  end
end
