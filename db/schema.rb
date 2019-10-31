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

ActiveRecord::Schema.define(version: 2019_11_02_161205) do

  create_table "advertisements", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.integer "user_id"
    t.integer "place_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_advertisements_on_place_id"
    t.index ["user_id"], name: "index_advertisements_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.integer "review_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_post_id"], name: "index_comments_on_review_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.text "address"
    t.integer "type_id"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reactions", force: :cascade do |t|
    t.integer "reaction_type"
    t.integer "user_id"
    t.integer "review_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_post_id"], name: "index_reactions_on_review_post_id"
    t.index ["user_id"], name: "index_reactions_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "followed_id"
    t.integer "follower_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_posts", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.integer "user_id"
    t.integer "place_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_review_posts_on_place_id"
    t.index ["user_id"], name: "index_review_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "gender"
    t.string "birthday"
    t.float "balance"
    t.boolean "is_adv"
    t.boolean "is_admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
