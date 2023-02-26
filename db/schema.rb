# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_26_031719) do

  create_table "properties", force: :cascade do |t|
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "purchase_price"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "square_feet"
    t.integer "garage_spaces"
    t.string "link"
    t.integer "type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "flip_status"
    t.index ["type_id"], name: "index_properties_on_type"
  end

  create_table "records", force: :cascade do |t|
    t.integer "mortgage_payment"
    t.integer "hoa_payment"
    t.integer "property_management_payment"
    t.integer "gross_income"
    t.boolean "occupancy"
    t.integer "property_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_records_on_property"
  end

  create_table "types", force: :cascade do |t|
    t.string "property_type"
  end

end
