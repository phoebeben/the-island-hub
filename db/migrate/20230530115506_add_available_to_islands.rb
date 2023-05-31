class AddAvailableToIslands < ActiveRecord::Migration[7.0]
  def change
    add_column :islands, :available, :boolean
  end
end
