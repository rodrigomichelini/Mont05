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

ActiveRecord::Schema.define(version: 20160713210018) do

  create_table "processors", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.float    "rating"
    t.string   "partnum"
    t.string   "manufacturer"
    t.string   "platform"
    t.string   "category"
    t.integer  "cache"
    t.integer  "instructionset"
    t.string   "lithography"
    t.string   "series"
    t.string   "corefamily"
    t.integer  "cores"
    t.integer  "threads"
    t.float    "basefrequency"
    t.float    "maxfrequency"
    t.integer  "tdp"
    t.string   "socket"
    t.boolean  "support64bit"
    t.integer  "maxmemorysize"
    t.string   "memorytypes"
    t.integer  "memorychannels"
    t.boolean  "eccsupport"
    t.boolean  "hasintegratedgpu"
    t.string   "integratedgpu"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "videocards", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.float    "rating"
    t.string   "partnum"
    t.string   "creator"
    t.string   "manufacturer"
    t.string   "platform"
    t.string   "category"
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
    t.float    "maxtemp"
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
  end

end
