class AddAverageRatingToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :avg_rating, :float, default: 0.0
  end
end
