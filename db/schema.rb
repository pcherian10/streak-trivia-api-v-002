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

ActiveRecord::Schema.define(version: 2019_05_31_153855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attempts", force: :cascade do |t|
    t.integer "answer"
    t.integer "right_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question_text"
    t.string "first_choice"
    t.string "second_choice"
    t.string "third_choice"
    t.integer "correct_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author_id"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "longest_streak"
    t.integer "correct_overall"
    t.integer "incorrect_overall"
    t.integer "ranking"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streaks", force: :cascade do |t|
    t.date "date"
    t.integer "streak_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
