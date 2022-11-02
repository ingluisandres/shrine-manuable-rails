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

ActiveRecord::Schema.define(version: 2022_11_02_123500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_verification_documents", force: :cascade do |t|
    t.integer "file_id"
    t.text "file_data"
    t.bigint "account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_account_verification_documents_on_account_id"
    t.index ["file_id"], name: "index_account_verification_documents_on_file_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.integer "verification_status"
    t.string "email"
    t.string "name"
    t.string "password"
    t.jsonb "verify_by"
    t.datetime "verify_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["verification_status"], name: "index_accounts_on_verification_status"
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.text "cover_photo_data"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "album_id"
    t.string "title"
    t.text "image_data"
    t.index ["album_id"], name: "index_photos_on_album_id"
  end

  add_foreign_key "photos", "albums"
end
