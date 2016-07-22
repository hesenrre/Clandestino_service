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

ActiveRecord::Schema.define(version: 20160722154701) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "no_ext"
    t.string   "no_int"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "chef_galleries", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "chef_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "chef_media_groups", force: :cascade do |t|
    t.integer  "chef_gallery_id"
    t.integer  "medium_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "chefs", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "person_id"
    t.integer  "contract_id"
    t.index ["email"], name: "index_chefs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_chefs_on_reset_password_token", unique: true
  end

  create_table "client_interests", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "interest_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "person_id"
    t.integer  "contract_id"
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "command_items", force: :cascade do |t|
    t.integer  "meal_event_command_id"
    t.integer  "event_product_id"
    t.integer  "quantity"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string   "url"
    t.text     "description"
    t.datetime "sign_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "delivery_addresses", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "address_id"
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_chefs", force: :cascade do |t|
    t.integer  "chef_id"
    t.integer  "meal_event_id"
    t.integer  "status"
    t.integer  "priority"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "event_galleries", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "meal_event_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "event_media_groups", force: :cascade do |t|
    t.integer  "event_gallery_id"
    t.integer  "media_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "event_payments", force: :cascade do |t|
    t.integer  "meal_event_command_id"
    t.integer  "type"
    t.datetime "transaction_date"
    t.string   "transaction_id"
    t.string   "reference"
    t.decimal  "amount"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "event_products", force: :cascade do |t|
    t.integer  "meal_event_id"
    t.integer  "product_id"
    t.decimal  "price"
    t.decimal  "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "event_providers", force: :cascade do |t|
    t.integer  "meal_event_id"
    t.integer  "provider_id"
    t.integer  "contract_id"
    t.integer  "status"
    t.integer  "priority"
    t.datetime "execution_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "food_preferences", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "food_style_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "food_styles", force: :cascade do |t|
    t.string   "label"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string   "label"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_attendants", force: :cascade do |t|
    t.integer  "meal_event_id"
    t.integer  "client_id"
    t.decimal  "event_rate"
    t.decimal  "chef_rate"
    t.decimal  "meal_rate"
    t.integer  "status"
    t.integer  "guest"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "meal_event_commands", force: :cascade do |t|
    t.integer  "meal_attendant_id"
    t.integer  "quantity"
    t.integer  "table_no"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "meal_events", force: :cascade do |t|
    t.datetime "event_date"
    t.datetime "confirmation_deadline"
    t.datetime "provider_confirmation_deadline"
    t.decimal  "baseprice"
    t.integer  "min_attendants"
    t.integer  "max_attendants"
    t.integer  "max_guest"
    t.text     "description"
    t.text     "instructions"
    t.text     "rules"
    t.integer  "address_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "label"
    t.text     "description"
    t.integer  "m_type"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "oauth_access_grants", force: :cascade do |t|
    t.integer  "resource_owner_id", null: false
    t.integer  "application_id",    null: false
    t.string   "token",             null: false
    t.integer  "expires_in",        null: false
    t.text     "redirect_uri",      null: false
    t.datetime "created_at",        null: false
    t.datetime "revoked_at"
    t.string   "scopes"
    t.index ["token"], name: "index_oauth_access_grants_on_token", unique: true
  end

  create_table "oauth_access_tokens", force: :cascade do |t|
    t.integer  "resource_owner_id"
    t.integer  "application_id"
    t.string   "token",                               null: false
    t.string   "refresh_token"
    t.integer  "expires_in"
    t.datetime "revoked_at"
    t.datetime "created_at",                          null: false
    t.string   "scopes"
    t.string   "previous_refresh_token", default: "", null: false
    t.index ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true
    t.index ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id"
    t.index ["token"], name: "index_oauth_access_tokens_on_token", unique: true
  end

  create_table "oauth_applications", force: :cascade do |t|
    t.string   "name",                      null: false
    t.string   "uid",                       null: false
    t.string   "secret",                    null: false
    t.text     "redirect_uri",              null: false
    t.string   "scopes",       default: "", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["uid"], name: "index_oauth_applications_on_uid", unique: true
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number"
    t.string   "ext"
    t.string   "label"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "code"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "provider_addresses", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "address_id"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "provider_contacts", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "person_id"
    t.string   "type"
    t.time     "opening_hour"
    t.time     "closing_hour"
    t.integer  "working_days"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "provider_phones", force: :cascade do |t|
    t.integer  "phone_id"
    t.integer  "provider_id"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "provider_products", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "product_id"
    t.decimal  "unit_price"
    t.integer  "quantity"
    t.decimal  "total_price"
    t.datetime "purchase_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "provider_types", force: :cascade do |t|
    t.string   "label"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "providers", force: :cascade do |t|
    t.integer  "providertype_id"
    t.string   "company_name"
    t.string   "rfc"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
