class FixColumnNamePhotographersToListingInFavorites < ActiveRecord::Migration
  def change
    rename_column :favorites, :photographer_id, :listing_id
  end

end
