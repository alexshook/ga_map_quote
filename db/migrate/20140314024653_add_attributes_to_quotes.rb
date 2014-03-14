class AddAttributesToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :quote, :text
  end
end
