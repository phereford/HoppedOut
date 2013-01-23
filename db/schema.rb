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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130123015054) do

  create_table "batch_items", :force => true do |t|
    t.integer  "batch_id"
    t.integer  "itemable_id"
    t.string   "itemable_type"
    t.hstore   "stored_attributes"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "batch_items", ["batch_id"], :name => "index_batch_items_on_batch_id"
  add_index "batch_items", ["itemable_id", "itemable_type"], :name => "index_batch_items_on_itemable_id_and_itemable_type"

  create_table "batches", :force => true do |t|
    t.integer  "user_id",                    :null => false
    t.string   "title",       :limit => 140, :null => false
    t.text     "description",                :null => false
    t.integer  "calories",                   :null => false
    t.hstore   "size",                       :null => false
    t.hstore   "color",                      :null => false
    t.hstore   "bitterness",                 :null => false
    t.hstore   "alcohol",                    :null => false
    t.hstore   "gravity",                    :null => false
    t.hstore   "efficiency",                 :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "batches", ["alcohol"], :name => "index_batches_on_alcohol"
  add_index "batches", ["bitterness"], :name => "index_batches_on_bitterness"
  add_index "batches", ["color"], :name => "index_batches_on_color"
  add_index "batches", ["efficiency"], :name => "index_batches_on_efficiency"
  add_index "batches", ["gravity"], :name => "index_batches_on_gravity"
  add_index "batches", ["size"], :name => "index_batches_on_size"
  add_index "batches", ["user_id"], :name => "index_batches_on_user_id"

  create_table "hops", :force => true do |t|
    t.string   "category"
    t.float    "max_alpha_acid"
    t.float    "min_alpha_acid"
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "malts", :force => true do |t|
    t.string   "name"
    t.integer  "srm"
    t.string   "origin"
    t.float    "potential_sg"
    t.string   "type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
