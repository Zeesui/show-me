# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_21_033609) do
  create_table "jobs", force: :cascade do |t|
    t.integer "user_id"
    t.string "job_name"
    t.text "job_miaoshu"
    t.integer "job_price"
    t.text "lianxi_fangshi"
    t.string "job_address"
    t.boolean "job_action", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_name"
    t.string "user_gender"
    t.integer "lianxi_phone"
    t.string "user_wechat"
    t.string "user_email"
    t.string "conghe_jineng"
    t.string "conghe_pingfen"
    t.string "guowang_zuopin"
    t.string "github_mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "first_touch", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "first_touch", default: false
    t.boolean "user_first_touch", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
