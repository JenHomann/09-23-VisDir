class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :customer_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
