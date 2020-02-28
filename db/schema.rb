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

ActiveRecord::Schema.define(version: 2020_02_28_012530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_listings", force: :cascade do |t|
    t.bigint "listing_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_listings_on_category_id"
    t.index ["listing_id"], name: "index_category_listings_on_listing_id"
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "neighbour_id"
    t.string "title"
    t.text "description"
    t.date "from"
    t.date "to"
    t.integer "price"
    t.integer "deposit"
    t.text "delivery"
    t.integer "condition"
    t.integer "rental_period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighbour_id"], name: "index_listings_on_neighbour_id"
  end

  create_table "neighbours", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "neighbour_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighbour_id"], name: "index_reviews_on_neighbour_id"
  end

  add_foreign_key "category_listings", "categories"
  add_foreign_key "category_listings", "listings"
  add_foreign_key "listings", "neighbours"
  add_foreign_key "reviews", "neighbours"
end