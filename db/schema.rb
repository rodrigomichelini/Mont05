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

ActiveRecord::Schema.define(version: 20160714003210) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "type"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "productable_type"
    t.integer  "productable_id"
    t.string   "name"
    t.string   "image"
    t.string   "partnum"
    t.string   "manufacturer"
    t.string   "platform"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["productable_type", "productable_id"], name: "index_products_on_productable_type_and_productable_id"
  end

  create_table "videocards", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "memory"
    t.string   "memorytype"
    t.integer  "memoryinterfacewidth"
    t.integer  "memorybaseclock"
    t.integer  "memoryboostclock"
    t.integer  "memorybandwidth"
    t.float    "computingpower"
    t.string   "interface"
    t.string   "chipset"
    t.boolean  "sli"
    t.string   "slitype"
    t.boolean  "crossfire"
    t.string   "crossfiretype"
    t.integer  "dviport"
    t.integer  "hdmiport"
    t.integer  "minihdmiport"
    t.integer  "displayport"
    t.integer  "minidisplayport"
    t.integer  "expansionslotw"
    t.integer  "tdp"
    t.integer  "maxtemp"
    t.string   "powerconnectors"
    t.string   "framesync"
    t.boolean  "ventoinha"
    t.string   "maximumresolution"
    t.boolean  "multimonitor"
    t.integer  "comprimento"
    t.integer  "largura"
    t.integer  "altura"
    t.string   "color"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["product_id"], name: "index_videocards_on_product_id"
  end

end
