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

ActiveRecord::Schema.define(version: 20140827191006) do

  create_table "equipment", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment_equipment_things_to_checks", force: true do |t|
    t.integer "equipment_id"
    t.integer "equipment_things_to_check_id"
  end

  create_table "equipment_rooms", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "equipment_id"
    t.integer  "room_id"
  end

  create_table "equipment_things_to_checks", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "equipment_id"
  end

  create_table "equipment_things_to_checks_route_sub_types", force: true do |t|
    t.integer "route_sub_type_id"
    t.integer "equipment_things_to_check_id"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.string   "building"
    t.string   "roomnumber"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "route_id"
  end

  create_table "route_sub_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "route_number"
    t.integer  "route_type_id"
  end

  create_table "route_sub_types_route_things_to_checks", id: false, force: true do |t|
    t.integer "route_sub_type_id",        null: false
    t.integer "route_things_to_check_id", null: false
  end

  create_table "route_sub_types_things_to_checks", force: true do |t|
    t.integer "route_sub_type_id"
    t.integer "route_things_to_check_id"
  end

  create_table "route_things_to_checks", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "route_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "route_type_id"
  end

  create_table "users", force: true do |t|
    t.string   "eid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
