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

ActiveRecord::Schema.define(version: 20180319153651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "child_first_name"
    t.string "child_last_name"
    t.string "child_gender"
    t.date "child_birth_date"
    t.string "child_nationality"
    t.string "child_first_lang"
    t.string "child_snd_lang"
    t.string "montessori_before"
    t.string "nursery"
    t.string "workshop"
    t.string "comment"
    t.string "mother_first_name"
    t.string "mother_last_name"
    t.string "mother_lang"
    t.string "mother_situation"
    t.string "mother_job"
    t.string "mother_fiscal"
    t.string "mother_address"
    t.string "mother_zipcode"
    t.string "mother_city"
    t.string "mother_email"
    t.string "mother_phone"
    t.string "mother_mobile"
    t.string "father_first_name"
    t.string "father_last_name"
    t.string "father_lang"
    t.string "father_situation"
    t.string "father_job"
    t.string "father_fiscal"
    t.string "father_address"
    t.string "father_zipcode"
    t.string "father_city"
    t.string "father_email"
    t.string "father_phone"
    t.string "father_mobile"
    t.string "knew_the_school"
    t.date "start_date"
    t.string "child_atmosphere"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "canteens", force: :cascade do |t|
    t.integer "meal_price"
    t.integer "year_price"
    t.integer "mounth_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "date"
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "general_documents", force: :cascade do |t|
    t.string "titlephoto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer "week_number"
    t.integer "year"
    t.string "monday"
    t.string "tuesday"
    t.string "wednesday"
    t.string "thursday"
    t.string "friday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nurseries", force: :cascade do |t|
    t.date "hour_range"
    t.integer "hour_price"
    t.integer "mounth_price"
    t.integer "year_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.date "start_date"
    t.date "end_date"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section_prices", force: :cascade do |t|
    t.string "section"
    t.string "year_price"
    t.string "mounth_price"
    t.string "semester_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workshops", force: :cascade do |t|
    t.integer "year_price"
    t.integer "semester_price"
    t.integer "week_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
