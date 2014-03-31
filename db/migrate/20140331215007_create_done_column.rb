class CreateDoneColumn < ActiveRecord::Migration
  def change
    create_table :done_columns do |t|
      add_column :tasks, :done, :boolean, default: false
    end
  end
end
