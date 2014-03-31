class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :start, :datetime
      t.column :end, :datetime

      t.timestamp
    end
  end
end
