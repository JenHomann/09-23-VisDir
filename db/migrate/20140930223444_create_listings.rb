class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :budget
      t.string :location
      t.string :image
      t.integer :category_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
