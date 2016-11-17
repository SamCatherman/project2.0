class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :quality
      t.string :img_url
      t.references :farm, index: true, foreign_key: true
      t.timestamps
    end
  end
end
