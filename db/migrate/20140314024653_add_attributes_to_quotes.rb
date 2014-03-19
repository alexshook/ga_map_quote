class AddAttributesToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :quote, :text
    add_column :quotes, :user_id, :integer
  end
end
