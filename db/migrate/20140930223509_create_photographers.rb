class CreatePhotographers < ActiveRecord::Migration
  def change
    create_table :photographers do |t|
      t.boolean :pro_status
      t.string :name

      t.timestamps
    end
  end
end
