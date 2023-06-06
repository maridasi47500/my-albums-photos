# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_06_194531) do
  create_table "mymapstuffs", force: :cascade do |t|
    t.string "title_fr"
    t.integer "x"
    t.integer "y"
    t.integer "mypic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "title_en"
  end

  create_table "mypics", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "title_fr"
    t.text "title_en"
  end

  create_table "sentences", force: :cascade do |t|
    t.text "content_fr"
    t.integer "mypic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content_en"
  end

end
