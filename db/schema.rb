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

ActiveRecord::Schema.define(version: 20140118093240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "check_images", force: true do |t|
    t.string   "name"
    t.string   "orignial_name"
    t.string   "discriminator"
    t.integer  "quick_report_id"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "submitter_id"
    t.integer  "resolve_id"
    t.integer  "template_report_item_id"
  end

  create_table "check_points", force: true do |t|
    t.string   "name"
    t.integer  "department_id"
    t.integer  "check_template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "check_template_report_items", force: true do |t|
    t.integer  "organization_id"
    t.integer  "template_id"
    t.integer  "department_id"
    t.integer  "template_report_id"
    t.integer  "check_point_id"
    t.integer  "submitter_id"
    t.boolean  "has_problem"
    t.string   "description"
    t.string   "level"
    t.string   "state"
    t.datetime "dead_line"
    t.integer  "resolve_num",        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "check_template_reports", force: true do |t|
    t.integer  "organization_id"
    t.integer  "template_id"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "check_templates", force: true do |t|
    t.string   "name"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organization_check_templates", id: false, force: true do |t|
    t.integer  "organization_id"
    t.integer  "check_template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "quick_reports", force: true do |t|
    t.integer  "department_id"
    t.integer  "submitter_id"
    t.integer  "responsible_person_id"
    t.integer  "organization_id"
    t.string   "level"
    t.text     "description"
    t.string   "state"
    t.datetime "dead_line"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version",               default: 0
    t.integer  "resolve_num",           default: 0
  end

  create_table "resolves", force: true do |t|
    t.string   "discriminator"
    t.integer  "submitter_id"
    t.integer  "quick_report_id"
    t.integer  "department_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "template_report_item_id"
  end

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
