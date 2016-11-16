class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.references :product, index: true, foreign_key: true
      t.references :farm, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
