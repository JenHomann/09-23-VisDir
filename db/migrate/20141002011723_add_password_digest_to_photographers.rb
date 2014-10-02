class AddPasswordDigestToPhotographers < ActiveRecord::Migration
  def change
    add_column :photographers, :password_digest, :string
    add_column :photographers, :email, :string
  end
end
