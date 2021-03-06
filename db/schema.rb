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

ActiveRecord::Schema.define(version: 20160904115406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.integer  "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genre_belongings", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "movie_id"
    t.index ["genre_id"], name: "index_genre_belongings_on_genre_id", using: :btree
    t.index ["movie_id"], name: "index_genre_belongings_on_movie_id", using: :btree
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_starrings", id: false, force: :cascade do |t|
    t.integer "actor_id"
    t.integer "movie_id"
    t.index ["actor_id"], name: "index_movie_starrings_on_actor_id", using: :btree
    t.index ["movie_id"], name: "index_movie_starrings_on_movie_id", using: :btree
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.integer  "length"
    t.integer  "popularity"
    t.boolean  "award_winning"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "director_id"
  end

end
