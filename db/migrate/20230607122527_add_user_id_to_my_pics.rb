class AddUserIdToMyPics < ActiveRecord::Migration[7.0]
  def change
    add_column :mypics, :user_id, :integer
    add_column :mymapstuffs, :user_id, :integer
    add_column :sentences, :user_id, :integer
  end
end
