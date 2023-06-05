class CreateMymapstuffs < ActiveRecord::Migration[7.0]
  def change
    create_table :mymapstuffs do |t|
      t.string :title
      t.integer :x
      t.integer :y
      t.integer :mypic_id

      t.timestamps
    end
  end
end
