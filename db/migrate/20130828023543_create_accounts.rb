class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.text :data

      t.timestamps
    end
  end
end
