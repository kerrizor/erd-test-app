class AddHstoreColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :book_inventory, :hstore
  end
end
