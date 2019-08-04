class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :image, :string
    add_column :items, :area, :integer
    add_column :items, :category, :integer
  end
end
