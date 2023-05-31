class RemoveAvailableFromIslands < ActiveRecord::Migration[7.0]
  def change
    remove_column :islands, :available, :boolean
  end
end
