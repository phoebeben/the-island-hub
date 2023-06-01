class AddCoordinatesToIslands < ActiveRecord::Migration[7.0]
  def change
    add_column :islands, :latitude, :float
    add_column :islands, :longitude, :float
  end
end
