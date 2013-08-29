class AddDataToDatabases < ActiveRecord::Migration
  def change
    add_column :databases, :data, :text
  end
end
