class CreateIslandCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :island_categories do |t|
      t.references :island, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
