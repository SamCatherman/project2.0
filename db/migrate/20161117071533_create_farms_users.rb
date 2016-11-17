class CreateFarmsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :farms_users do |t|
      t.references :user, foreign_key: true
      t.references :farm, foreign_key: true    end
  end
end
