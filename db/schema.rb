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

ActiveRecord::Schema.define(:version => 20130127124700) do

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

  create_table "pictures", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "pass"
    t.integer  "unpass"
    t.integer  "groupunpass"
    t.string   "status"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "password_digest"
    t.string   "password_confirmation"
    t.string   "remember_token"
    t.string   "type"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
