class CreatePhotographers < ActiveRecord::Migration
  def change
    create_table :photographers do |t|
      t.boolean :pro-status
      t.string :name

      t.timestamps
    end
  end
end
