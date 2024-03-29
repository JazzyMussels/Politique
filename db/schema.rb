# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_04_025415) do

  create_table "debates", force: :cascade do |t|
    t.string "name"
    t.string "network"
    t.integer "user_1_id"
    t.integer "user_2_id"
    t.integer "winner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "network_photo"
  end

  create_table "games", force: :cascade do |t|
    t.integer "option1", default: 0
    t.integer "option2", default: 0
    t.integer "option3", default: 0
    t.integer "option4", default: 0
    t.integer "moves", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parties", force: :cascade do |t|
    t.string "name"
    t.string "party_type"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
  end

  create_table "policies", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
  end

  create_table "scandals", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "photographic_evidence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_debates", force: :cascade do |t|
    t.integer "user_id"
    t.integer "debate_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_parties", force: :cascade do |t|
    t.integer "user_id"
    t.integer "party_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_policies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "policy_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_scandals", force: :cascade do |t|
    t.integer "user_id"
    t.integer "scandal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "giver_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "photo"
    t.integer "age"
    t.string "race"
    t.string "gender"
    t.string "location"
    t.string "bio"
    t.boolean "politician", default: false
    t.string "title"
    t.string "running_mate_photo"
    t.string "running_mate_name"
    t.string "level", default: "1"
    t.integer "vote_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "voter_id"
    t.integer "politician_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
