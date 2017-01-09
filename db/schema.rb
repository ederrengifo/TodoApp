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

ActiveRecord::Schema.define(version: 20170109012007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string   "board_title"
    t.string   "topic"
    t.integer  "messages"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string   "fav_author"
    t.string   "fav_content"
    t.integer  "user_id"
    t.integer  "message_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "board_id"
  end

  create_table "links", force: :cascade do |t|
    t.string   "folderName"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "tool"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "content"
    t.string   "author"
    t.integer  "user_id"
    t.integer  "message_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "board_id"
    t.boolean  "favorite",   default: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "noteTitle"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.string   "noteDescription"
  end

  create_table "notes_lists", force: :cascade do |t|
    t.string   "codeTitle"
    t.text     "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "note_id"
    t.string   "noteStatus"
    t.string   "txtTitle"
    t.text     "txt"
    t.string   "embedTitle"
    t.text     "embed"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "todo_app_list_id"
    t.string   "content"
    t.boolean  "completed"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "priority",         default: false
  end

  create_table "todo_app_lists", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
    t.string   "task"
    t.integer  "user_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string   "tool"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "link_id"
    t.string   "link_url"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

end
