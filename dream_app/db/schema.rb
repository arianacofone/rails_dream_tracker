ActiveRecord::Schema.define(version: 20161025183226) do

  enable_extension "plpgsql"

  create_table "dreams", force: :cascade do |t|
    t.string   "title"
    t.text     "dream"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
