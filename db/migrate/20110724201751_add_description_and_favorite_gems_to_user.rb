class AddDescriptionAndFavoriteGemsToUser < ActiveRecord::Migration
  def change
    add_column :users, :description, :string
    add_column :users, :favorite_gems, :string
  end
end
