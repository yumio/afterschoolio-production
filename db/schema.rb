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

ActiveRecord::Schema.define(version: 20160803182243) do

  create_table "orgs", force: :cascade do |t|
    t.string   "org_name"
    t.string   "org_street"
    t.string   "org_city"
    t.string   "org_state"
    t.string   "org_zip"
    t.string   "org_phone"
    t.string   "org_url"
    t.string   "org_email"
    t.string   "org_description"
    t.string   "org_imageurl"
    t.string   "org_category"
    t.string   "org_subcategory"
    t.string   "org_tag"
    t.integer  "org_kidgrade_start"
    t.integer  "org_kidgrade_end"
    t.boolean  "org_featured"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "review_author"
    t.string   "review_content"
    t.integer  "org_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["org_id"], name: "index_reviews_on_org_id"
  end

end
