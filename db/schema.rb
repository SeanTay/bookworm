
ActiveRecord::Schema.define(version: 20160702143222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "photo_url"
    t.boolean  "has_read"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "author"
    t.string   "body"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["book_id"], name: "index_comments_on_book_id", using: :btree

  add_foreign_key "comments", "books"
end
