# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150917033733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "injection_types", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "injections", force: true do |t|
    t.string   "name"
    t.text     "html"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
    t.integer  "injection_type_id"
  end

  add_index "injections", ["account_id"], name: "index_injections_on_account_id", using: :btree
  add_index "injections", ["injection_type_id"], name: "index_injections_on_injection_type_id", using: :btree

  create_table "page_injections", force: true do |t|
    t.integer  "page_id"
    t.integer  "injection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_injections", ["injection_id"], name: "index_page_injections_on_injection_id", using: :btree
  add_index "page_injections", ["page_id"], name: "index_page_injections_on_page_id", using: :btree

  create_table "pages", force: true do |t|
    t.string   "name"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["account_id"], name: "index_pages_on_account_id", using: :btree

end
