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

ActiveRecord::Schema.define(version: 20160411220710) do

  create_table "blogs", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.integer  "zombie_id",  limit: 4,     null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "blogs", ["zombie_id"], name: "index_blogs_on_zombie_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "message",          limit: 255
    t.integer  "zombie_id",        limit: 4,   null: false
    t.integer  "commentable_id",   limit: 4,   null: false
    t.string   "commentable_type", limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "comments", ["zombie_id"], name: "index_comments_on_zombie_id", using: :btree

  create_table "graveyards", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "grunts", force: :cascade do |t|
    t.string   "message",    limit: 255
    t.integer  "zombie_id",  limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "grunts", ["zombie_id"], name: "index_grunts_on_zombie_id", using: :btree

  create_table "zombies", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "graveyard_id", limit: 4,   null: false
    t.string   "status",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "zombies", ["graveyard_id"], name: "index_zombies_on_graveyard_id", using: :btree

  add_foreign_key "blogs", "zombies"
  add_foreign_key "comments", "zombies"
  add_foreign_key "grunts", "zombies"
  add_foreign_key "zombies", "graveyards"
end
