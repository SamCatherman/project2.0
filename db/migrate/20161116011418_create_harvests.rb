class CreateHarvests < ActiveRecord::Migration[5.0]
  def change
    create_table :harvests do |t|
      t.string :date
      t.references :farm, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
