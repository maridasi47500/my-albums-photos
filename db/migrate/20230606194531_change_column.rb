class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :sentences, :content, :content_fr
    add_column :sentences, :content_en, :text
    rename_column :mymapstuffs, :title, :title_fr
    add_column :mymapstuffs, :title_en, :text
    add_column :mypics, :title_fr, :text
    add_column :mypics, :title_en, :text
  end
end
