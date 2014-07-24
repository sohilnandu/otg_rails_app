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

ActiveRecord::Schema.define(version: 20140724192855) do

  create_table "event_registrants", force: true do |t|
    t.integer  "ImportID"
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Addr1"
    t.string   "Addr2"
    t.string   "City"
    t.string   "State"
    t.string   "DonorCategory"
    t.string   "NextAskAmount"
    t.string   "TotalIdentifiedAssets"
    t.boolean  "CurrentMajor1kDonor"
    t.boolean  "MajorDonorWith1MMinAssets"
    t.boolean  "MajorUnderPerformer"
    t.integer  "MajorUnderPerformingByAmount"
    t.boolean  "AnnualDonorWith1MMinAssets"
    t.boolean  "AnnualUnderPerformer"
    t.integer  "AnnualUnderPerformingByAmount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "checked_in"
    t.datetime "checked_in_time"
  end

end
