class AddEmailTwitterAndHomepageToPhotographers < ActiveRecord::Migration
  def change
    add_column :photographers, :twitter, :string
    add_column :photographers, :homepage, :string
  end
end
