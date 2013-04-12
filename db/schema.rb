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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 2013030204521212) do

  create_table "badges_sashes", :force => true do |t|
    t.integer  "badge_id"
    t.integer  "sash_id"
    t.boolean  "notified_user", :default => false
    t.datetime "created_at"
  end

  add_index "badges_sashes", ["badge_id", "sash_id"], :name => "index_badges_sashes_on_badge_id_and_sash_id"
  add_index "badges_sashes", ["badge_id"], :name => "index_badges_sashes_on_badge_id"
  add_index "badges_sashes", ["sash_id"], :name => "index_badges_sashes_on_sash_id"

  create_table "goods", :force => true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "version"
    t.string   "status"
    t.string   "administrator"
    t.string   "shelf"
    t.integer  "price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "merit_actions", :force => true do |t|
    t.integer  "user_id"
    t.string   "action_method"
    t.integer  "action_value"
    t.boolean  "had_errors",    :default => false
    t.string   "target_model"
    t.integer  "target_id"
    t.boolean  "processed",     :default => false
    t.string   "log"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "merit_score_points", :force => true do |t|
    t.integer  "score_id"
    t.integer  "num_points", :default => 0
    t.string   "log"
    t.datetime "created_at"
  end

  create_table "merit_scores", :force => true do |t|
    t.integer "sash_id"
    t.string  "category", :default => "default"
  end

  create_table "pictures", :force => true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "pass",        :default => 0
    t.integer  "unpass",      :default => 0
    t.integer  "groupunpass", :default => 0
    t.string   "status",      :default => "待审"
    t.integer  "grouppass",   :default => 0
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.integer  "number"
    t.integer  "price"
    t.string   "version"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "type"
    t.integer  "user_id"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "picture_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sashes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "password_digest"
    t.string   "password_confirmation"
    t.string   "remember_token"
    t.string   "type"
    t.boolean  "guest"
    t.integer  "sash_id"
    t.integer  "level",                 :default => 0
    t.integer  "product_id"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
