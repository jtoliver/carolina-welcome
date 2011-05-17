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

ActiveRecord::Schema.define(:version => 20110509141142) do

  create_table "events", :force => true do |t|
    t.string   "event_title"
    t.datetime "event_date"
    t.datetime "event_dateend"
    t.text     "event_description"
    t.string   "event_sponsers"
    t.boolean  "event_status_sig"
    t.boolean  "event_status_feat"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "eventflyer_file_name"
    t.string   "eventflyer_content_type"
    t.integer  "eventflyer_file_size"
    t.datetime "eventflyer_updated_at"
  end

end
