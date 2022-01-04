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

ActiveRecord::Schema.define(version: 2022_01_04_135533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "collection"
    t.integer "price"
    t.integer "damage"
    t.string "color"
    t.integer "cash"
    t.integer "draw"
    t.integer "heal"
    t.integer "discard"
    t.integer "discard_enemy"
    t.boolean "card_discarding_on_top"
    t.boolean "next_action_purchased_on_top_if_combine"
    t.integer "heal_for_all_champs"
    t.boolean "next_card_purchased_in_hand_if_combine"
    t.integer "life_of_champ"
    t.integer "life_of_gard"
    t.integer "sacrify"
    t.boolean "choice"
    t.integer "damage_for_all_champs"
    t.boolean "combine"
    t.string "damage_if_sacrify"
    t.boolean "throw"
    t.integer "knock_ou_champ"
    t.integer "damage_for_other_green"
    t.integer "damage_for_other_champ"
    t.boolean "champ_from_discarding_on_top"
    t.integer "damage_for_other_gard"
    t.boolean "mobilize_champ_if_combine"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "photo"
    t.integer "damage_if_throw"
    t.integer "damage_if_combine"
    t.integer "damage_if_choice"
    t.integer "cash_if_combine"
    t.integer "draw_if_combine"
    t.integer "discard_enemy_if_combine"
    t.integer "heal_if_combine"
    t.integer "discard_enemy_if_throw"
    t.integer "heal_for_all_champs_if_combine"
    t.integer "heal_for_all_champs_if_choice"
    t.integer "cash_if_choice"
    t.boolean "knock_out_champ_if_combine"
    t.integer "heal_if_choice"
    t.integer "discard_if_combine"
    t.boolean "next_card_purchased_on_top_if_combine"
    t.boolean "gard"
    t.boolean "champion"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cards", "users"
end
