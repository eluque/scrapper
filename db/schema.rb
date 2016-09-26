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

ActiveRecord::Schema.define(version: 20160923085615) do

  create_table "brand_models", force: :cascade do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_brand_models_on_brand_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scraper_brands", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scraper_models", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "scraper_brand_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["scraper_brand_id"], name: "index_scraper_models_on_scraper_brand_id"
  end

  create_table "scraper_parts", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "scraper_year_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["scraper_year_id"], name: "index_scraper_parts_on_scraper_year_id"
  end

  create_table "scraper_years", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "scraper_model_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["scraper_model_id"], name: "index_scraper_years_on_scraper_model_id"
  end

end
