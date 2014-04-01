
ActiveRecord::Schema.define(version: 20140331215007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "done_columns", force: true do |t|
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start"
    t.datetime "end"
    t.boolean  "done",        default: false
  end

end
