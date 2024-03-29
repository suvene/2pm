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

ActiveRecord::Schema.define(:version => 20120315235203) do

  create_table "projects", :force => true do |t|
    t.string   "task_no",                     :null => false
    t.string   "name",                        :null => false
    t.integer  "lock_version", :default => 0
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "cd"
    t.string   "name_f"
    t.string   "name_l"
    t.string   "nickname"
    t.string   "mail"
    t.string   "password"
    t.integer  "lock_version"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
