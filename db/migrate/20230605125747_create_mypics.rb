class CreateMypics < ActiveRecord::Migration[7.0]
  def change
    create_table :mypics do |t|
      t.string :image

      t.timestamps
    end
  end
end
