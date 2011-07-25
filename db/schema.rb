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

ActiveRecord::Schema.define(:version => 20110725222611) do

  create_table "competition_theme_votes", :force => true do |t|
    t.integer  "competition_id", :null => false
    t.integer  "user_id",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "competition_theme_votes", ["user_id", "competition_id"], :name => "index_competition_theme_votes_on_user_id_and_competition_id", :unique => true

  create_table "competitions", :force => true do |t|
    t.string   "theme"
    t.datetime "start_date", :null => false
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submission_votes", :force => true do |t|
    t.integer  "user_id",        :null => false
    t.integer  "competition_id", :null => false
    t.integer  "submission_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "submission_votes", ["user_id", "competition_id"], :name => "index_submission_votes_on_user_id_and_competition_id", :unique => true

  create_table "submissions", :force => true do |t|
    t.string   "name",           :null => false
    t.string   "url",            :null => false
    t.integer  "votes"
    t.integer  "competition_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.string   "favorite_gems"
  end

end
