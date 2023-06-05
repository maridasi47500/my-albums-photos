class CreateSentences < ActiveRecord::Migration[7.0]
  def change
    create_table :sentences do |t|
      t.text :content
      t.integer :mypic_id

      t.timestamps
    end
  end
end
