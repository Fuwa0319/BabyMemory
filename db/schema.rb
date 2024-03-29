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

ActiveRecord::Schema.define(version: 2022_03_08_163807) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment"
    t.bigint "user_id", null: false
    t.bigint "memory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["memory_id"], name: "index_comments_on_memory_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "get_ups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "memo"
    t.bigint "user_id", null: false
    t.bigint "memory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["memory_id"], name: "index_get_ups_on_memory_id"
    t.index ["user_id"], name: "index_get_ups_on_user_id"
  end

  create_table "memories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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

  create_table "poops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "amount_id", null: false
    t.integer "hardness_id", null: false
    t.string "memo"
    t.bigint "user_id", null: false
    t.bigint "memory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["memory_id"], name: "index_poops_on_memory_id"
    t.index ["user_id"], name: "index_poops_on_user_id"
  end

  create_table "sleeps", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "memo"
    t.bigint "user_id", null: false
    t.bigint "memory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["memory_id"], name: "index_sleeps_on_memory_id"
    t.index ["user_id"], name: "index_sleeps_on_user_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "memories"
  add_foreign_key "comments", "users"
  add_foreign_key "get_ups", "memories"
  add_foreign_key "get_ups", "users"
  add_foreign_key "memories", "users"
  add_foreign_key "milks", "memories"
  add_foreign_key "milks", "users"
  add_foreign_key "pees", "memories"
  add_foreign_key "pees", "users"
  add_foreign_key "poops", "memories"
  add_foreign_key "poops", "users"
  add_foreign_key "sleeps", "memories"
  add_foreign_key "sleeps", "users"
  add_foreign_key "temperatures", "memories"
  add_foreign_key "temperatures", "users"
end
