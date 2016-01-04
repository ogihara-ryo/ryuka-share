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

ActiveRecord::Schema.define(version: 20160103164501) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assigned_schedules_relations", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.integer  "schedule_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "assigned_schedules_relations", ["schedule_id"], name: "index_assigned_schedules_relations_on_schedule_id", using: :btree
  add_index "assigned_schedules_relations", ["user_id"], name: "index_assigned_schedules_relations_on_user_id", using: :btree

  create_table "assigned_tasks_relations", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "task_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assigned_tasks_relations", ["task_id"], name: "index_assigned_tasks_relations_on_task_id", using: :btree
  add_index "assigned_tasks_relations", ["user_id"], name: "index_assigned_tasks_relations_on_user_id", using: :btree

  create_table "group_members_relations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "group_members_relations", ["group_id"], name: "index_group_members_relations_on_group_id", using: :btree
  add_index "group_members_relations", ["user_id"], name: "index_group_members_relations_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "from_user_id"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "messages", ["from_user_id"], name: "index_messages_on_from_user_id", using: :btree

  create_table "messages_relations", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "message_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages_relations", ["message_id"], name: "index_messages_relations_on_message_id", using: :btree
  add_index "messages_relations", ["user_id"], name: "index_messages_relations_on_user_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "email"
    t.string   "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.integer  "author_id"
    t.datetime "start"
    t.datetime "end"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "schedules", ["author_id"], name: "index_schedules_on_author_id", using: :btree

  create_table "task_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "category_id"
    t.string   "title"
    t.text     "description"
    t.integer  "priority"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["author_id"], name: "index_tasks_on_author_id", using: :btree
  add_index "tasks", ["category_id"], name: "index_tasks_on_category_id", using: :btree

  create_table "topic_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "category_id"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "topics", ["author_id"], name: "index_topics_on_author_id", using: :btree
  add_index "topics", ["category_id"], name: "index_topics_on_category_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "signin_id",                  null: false
    t.string   "password",                   null: false
    t.boolean  "admin",      default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_foreign_key "group_members_relations", "groups"
  add_foreign_key "group_members_relations", "users"
  add_foreign_key "profiles", "users"
end
