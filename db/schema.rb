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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150312203405) do

  create_table "soft_sell_surveys", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "survey_contact_id"
    t.boolean  "ma",                default: false
    t.boolean  "mb",                default: false
    t.boolean  "mc",                default: false
    t.boolean  "md",                default: false
    t.boolean  "a0",                default: false
    t.boolean  "a1",                default: false
    t.boolean  "a2",                default: false
    t.boolean  "a3",                default: false
    t.boolean  "a4",                default: false
    t.boolean  "a5",                default: false
    t.boolean  "a6",                default: false
    t.boolean  "a7",                default: false
    t.boolean  "bA0",               default: false
    t.boolean  "bA1",               default: false
    t.boolean  "bA2",               default: false
    t.boolean  "bA3",               default: false
    t.boolean  "bA4",               default: false
    t.boolean  "bB0",               default: false
    t.boolean  "bB1",               default: false
    t.boolean  "bB2",               default: false
    t.boolean  "bB3",               default: false
    t.boolean  "bB4",               default: false
    t.boolean  "bB5",               default: false
    t.boolean  "bB6",               default: false
    t.boolean  "bB7",               default: false
    t.boolean  "cA0",               default: false
    t.boolean  "cA0a",              default: false
    t.boolean  "cA0b",              default: false
    t.boolean  "cA0c",              default: false
    t.boolean  "cA1",               default: false
    t.boolean  "cA2",               default: false
    t.boolean  "cA3",               default: false
    t.boolean  "cA4",               default: false
    t.boolean  "cA5",               default: false
    t.boolean  "cA6",               default: false
    t.boolean  "cB0",               default: false
    t.boolean  "cB1",               default: false
    t.boolean  "cB2",               default: false
    t.boolean  "cB3",               default: false
    t.boolean  "cB4",               default: false
    t.boolean  "cB5",               default: false
    t.boolean  "cB6",               default: false
    t.boolean  "cB7",               default: false
    t.boolean  "cB8",               default: false
    t.boolean  "cB9",               default: false
    t.boolean  "cB10",              default: false
    t.boolean  "cB11",              default: false
    t.boolean  "d0",                default: false
    t.boolean  "d1",                default: false
    t.boolean  "d1a",               default: false
    t.boolean  "d1b",               default: false
    t.boolean  "d1c",               default: false
    t.boolean  "d1d",               default: false
    t.boolean  "d1e",               default: false
    t.boolean  "other",             default: false
  end

  create_table "survey_contacts", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
