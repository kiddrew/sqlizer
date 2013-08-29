class AddDataToQueryTokens < ActiveRecord::Migration
  def change
    add_column :query_tokens, :data, :text
  end
end
