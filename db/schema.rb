# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_17_074546) do

  create_table "memories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment"
    t.datetime "worked_at", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_memories_on_user_id"
  end

  create_table "milks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "milk_list_id", null: false
    t.string "memo"
    t.bigint "user_id", null: false
    t.bigint "memory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["memory_id"], name: "index_milks_on_memory_id"
    t.index ["user_id"], name: "index_milks_on_user_id"
  end

  create_table "pees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "amount_id", null: false
    t.string "memo"
    t.bigint "user_id", null: false
    t.bigint "memory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["memory_id"], name: "index_pees_on_memory_id"
    t.index ["user_id"], name: "index_pees_on_user_id"
  end

  create_table "temperatures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "temperature_list_id"
    t.string "memo"
    t.bigint "user_id"
    t.bigint "memory_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["memory_id"], name: "index_temperatures_on_memory_id"
    t.index ["user_id"], name: "index_temperatures_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "baby_name", null: false
    t.string "baby_name_kana", null: false
    t.date "birthday", null: false
    t.integer "parent_id", null: false
    t.integer "gender_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "memories", "users"
  add_foreign_key "milks", "memories"
  add_foreign_key "milks", "users"
  add_foreign_key "pees", "memories"
  add_foreign_key "pees", "users"
  add_foreign_key "temperatures", "memories"
  add_foreign_key "temperatures", "users"
end
