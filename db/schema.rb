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

ActiveRecord::Schema.define(version: 20160120120036) do

  create_table "audios", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "tags",        limit: 255
    t.string   "owner",       limit: 255
    t.integer  "status",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "tags",        limit: 255
    t.string   "owner",       limit: 255
    t.integer  "status",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "links", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "link",        limit: 255
    t.string   "tags",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "note_audios", force: :cascade do |t|
    t.integer  "note_id",    limit: 4
    t.integer  "audio_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "note_audios", ["audio_id"], name: "index_note_audios_on_audio_id", using: :btree
  add_index "note_audios", ["note_id"], name: "index_note_audios_on_note_id", using: :btree

  create_table "note_links", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "link_id",    limit: 4
    t.integer  "note_id",    limit: 4
  end

  add_index "note_links", ["link_id"], name: "index_note_links_on_link_id", using: :btree
  add_index "note_links", ["note_id"], name: "index_note_links_on_note_id", using: :btree

  create_table "note_texts", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "text_id",    limit: 4
    t.integer  "note_id",    limit: 4
  end

  add_index "note_texts", ["note_id"], name: "index_note_texts_on_note_id", using: :btree
  add_index "note_texts", ["text_id"], name: "index_note_texts_on_text_id", using: :btree

  create_table "note_videos", force: :cascade do |t|
    t.integer  "note_id",    limit: 4
    t.integer  "video_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "note_videos", ["note_id"], name: "index_note_videos_on_note_id", using: :btree
  add_index "note_videos", ["video_id"], name: "index_note_videos_on_video_id", using: :btree

  create_table "notebooks", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "owner",       limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "tags",        limit: 255
    t.string   "owner",       limit: 255
    t.integer  "status",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "notebook_id", limit: 4
  end

  add_index "notes", ["notebook_id"], name: "index_notes_on_notebook_id", using: :btree

  create_table "texts", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "tags",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "user_notebooks", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "notebook_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "user_notebooks", ["notebook_id"], name: "index_user_notebooks_on_notebook_id", using: :btree
  add_index "user_notebooks", ["user_id"], name: "index_user_notebooks_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "tags",        limit: 255
    t.string   "owner",       limit: 255
    t.integer  "status",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "video",       limit: 255
  end

  add_foreign_key "note_audios", "audios"
  add_foreign_key "note_audios", "notes"
  add_foreign_key "note_links", "links"
  add_foreign_key "note_links", "notes"
  add_foreign_key "note_texts", "notes"
  add_foreign_key "note_texts", "texts"
  add_foreign_key "note_videos", "notes"
  add_foreign_key "note_videos", "videos"
  add_foreign_key "notes", "notebooks"
  add_foreign_key "user_notebooks", "notebooks"
  add_foreign_key "user_notebooks", "users"
end
