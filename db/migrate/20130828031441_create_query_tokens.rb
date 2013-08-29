class CreateQueryTokens < ActiveRecord::Migration
  def change
    create_table :query_tokens do |t|

      t.timestamps
    end
  end
end
