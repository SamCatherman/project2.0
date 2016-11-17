class AddUsersToFarms < ActiveRecord::Migration[5.0]
  def change
    add_reference :farms, :user, foreign_key: true
  end
end
