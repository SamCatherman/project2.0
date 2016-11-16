class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :quality
      t.integer :weight, null: false
      t.integer :price, null: false
      t.string :farm
      t.references :farm, index: true, foreign_key: true
      t.timestamps
    end
  end
end
