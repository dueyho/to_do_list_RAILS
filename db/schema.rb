ActiveRecord::Schema.define(version: 20140331183348) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start"
    t.datetime "end"
  end

end
