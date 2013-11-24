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

ActiveRecord::Schema.define(version: 20131124075424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organization_posts", force: true do |t|
    t.string   "type"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.integer  "parent_id"
  end

  add_index "organizations", ["name"], name: "organizations_unique_name", unique: true, using: :btree

  create_table "units", force: true do |t|
    t.string   "name"
    t.string   "discriminator"
    t.integer  "department_id"
    t.integer  "parent_organization_id"
    t.string   "organization_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "units", ["name", "discriminator"], name: "unit_unique_deparmtnet_name_idx", unique: true, where: "((discriminator)::text = 'department'::text)", using: :btree

  create_table "user_organization_posts", id: false, force: true do |t|
    t.integer  "organization_post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_organization_posts", ["user_id", "organization_post_id"], name: "user_organization_posts_unique", unique: true, using: :btree

  create_table "user_organizations", id: false, force: true do |t|
    t.integer  "user_id"
    t.integer  "organization_id"
    t.integer  "organization_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_organizations", ["organization_order"], name: "index_user_organizations_on_organization_order", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_cryp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.string   "account"
    t.integer  "department_id"
    t.string   "role"
  end

  add_index "users", ["account"], name: "users_unique_account", unique: true, using: :btree

end
