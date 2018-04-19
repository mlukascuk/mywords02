# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180419174217) do

  create_table "words", force: :cascade do |t|
    t.integer "owner_id"
    t.string "target"
    t.string "word_class"
    t.text "target_sample_0"
    t.text "target_sample_1"
    t.text "target_sample_2"
    t.string "native"
    t.text "native_sample_0"
    t.text "native_sample_1"
    t.text "native_sample_2"
    t.date "created"
    t.integer "learn_state"
    t.date "next_schedule"
    t.date "last_schedule"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
