class AddTypeColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :type, :string
    add_column :posts, :foo, :string
  end
end
