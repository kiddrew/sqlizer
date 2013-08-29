class CreateQueryRuns < ActiveRecord::Migration
  def change
    create_table :query_runs do |t|
      t.string :data

      t.timestamps
    end
  end
end
