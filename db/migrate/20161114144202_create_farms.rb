class CreateFarms < ActiveRecord::Migration[5.0]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :location
      t.string :specialty
      t.string :img_url
      t.timestamps
    end
  end
end
